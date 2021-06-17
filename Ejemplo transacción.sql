DECLARE @Monto DECIMAL(18,2),
@CuentaADecrementar VARCHAR(12),
@CuentaAIncrementar VARCHAR(12) 

/* Asignamos el monto de la transacción y las cuentas a afectar*/

SET @Monto = 1900 
SET @CuentaADecrementar = '20161206'
SET @CuentaAIncrementar = '20161207' 

BEGIN TRANSACTION 
BEGIN TRY

/* Descontamos el monto de la cuenta a decrementar */
UPDATE CUENTAS SET SALDO = SALDO - @Monto WHERE NUMCUENTA = @CuentaADecrementar 

/* Registramos el movimiento */
INSERT INTO MOVIMIENTOS (IDCUENTA, SALDO_ANTERIOR, SALDO_POSTERIOR,IMPORTE, FXMOVIMIENTO)

/* Incrementamos el monto de la cuenta a incrementar */
UPDATE CUENTAS SET SALDO = SALDO + @Monto WHERE NUMCUENTA = @CuentaAIncrementar 

/* Registramos el movimiento */
INSERT INTO MOVIMIENTOS (IDCUENTA, SALDO_ANTERIOR, SALDO_POSTERIOR, IMPORTE, FXMOVIMIENTO)

/* Confirmamos la transaccion*/
COMMIT TRANSACTION 

END TRY

BEGIN CATCH

/* Ocurrió un error, deshacemos los cambios*/ 
ROLLBACK TRANSACTION
PRINT 'Ha ocurrido un error!'

END CATCH