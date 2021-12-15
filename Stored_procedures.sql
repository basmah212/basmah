--2.a_login using my username and password
--drop proc userLogin
create proc userLogin @id int, @password varchar(20)
as
declare @result bit
if exists(select * from PostGradUser where id=@id and password=@password)set @result=1 else set @result=0
print @result;
Go
--3.a List all supervisors in the system
create proc AdminListSup 
as
select * from Supervisor
go

