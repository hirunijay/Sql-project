create function dbo.No_of_Employees(@empId varchar(5), @Nhours int)
returns int
as
begin
declare @NoEmployee int;
select @NoEmployee=count(*) from Employee e
where Emp_Id=@empId and Working_hrs> @Nhours;
return @NoEmployee;
end;

create function dbo.CalAge(@empId varchar(5))
returns int
as 
begin
declare @Age int
declare @Bday date
select @Bday=e.DOB from Employee e where e.Emp_Id=@empId;
select @Age=datediff(yy,@Bday,getdate());
return @Age;
end;

create function dbo.No_of_Users()
returns int
as
begin
declare @UCount int
declare @UInserted int
declare @UDeleted int
select @UInserted=count(*) from User_Logs u where u.Action='Inserted';
select @UDeleted=count(*) from User_Logs u where u.Action='Deleted';
set @UCount=@UInserted-@UDeleted;
return @UCount;
end;

create function FindE_City(@city varchar(20))
returns varchar
as
begin
declare @name varchar(20)
declare @empId varchar(5)
select @name=u.Full_Name, @empId=e.Emp_Id from Users u join Employee e
on u.NIC=e.NIC where u.Address like @city;
return @empId;
return @name;
end;