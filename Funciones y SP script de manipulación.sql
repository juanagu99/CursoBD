use Rocketbot_Pro

--======================
--llamado a de un sp
exec SP_HelloWorld; --mucho m�s como su llamado
dbo.SP_HelloWorld;
SP_HelloWorld;
execute SP_HelloWorld;
--======================

--======================
--lllamado a una funci�n
select dbo.FC_HelloWorld() as regards
--select FC_HelloWorld() as regards --sin el dbo. falla!
--======================

--Reusabilidad
--funciones
select CONCAT(dbo.FC_HelloWorld(),', bienvenido a 2nv') as Regards -- mucho m�s facil que un sp
--sp
declare @message varchar(20)
exec SP_HelloWorldReturn @paramout=@message out
select CONCAT(@message,', bienvenido a 2nv')


