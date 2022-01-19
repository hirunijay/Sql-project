create trigger Add_Date
on dbo.Sell_Invoice
instead of insert
as 
begin
insert into Sell_Invoice 
select Sell_Pro_Id, Inv_No ,getdate() from inserted;
end;

create trigger Add_Salary
on dbo.Employee
instead of insert 
as
begin
insert into Employee
select Emp_Id, NIC,Working_hrs,Working_hrs*5000 from inserted;
end;

create trigger Qty_Update
on dbo.Sell_Invoice
after insert
as declare
@Sell_Id varchar(5);
select @Sell_Id= Sell_Invoice.Sell_Pro_Id from inserted Sell_Invoice;
begin
update Items_Supplier set Quantity=Quantity-1 where Items_Supplier.Sell_Pro_Id=@Sell_Id;
end;

create trigger User_Insertlog
on dbo.Users
after insert
as
begin
set nocount on;
declare @UserId varchar(10)
select @UserId=inserted.NIC from inserted;
insert into User_Logs values(@UserId,'Inserted');
end;

create trigger User_Deletelogs
on dbo.Users
after delete
as
begin
set nocount on;
declare @UserId varchar(10)
select @UserId=deleted.NIC from deleted
insert into User_Logs values(@UserId,'Deleted');
end;

create trigger User_Updatelogs
on dbo.Users
after update
as
begin
set nocount on;
declare @UserId varchar(10)
declare @Action varchar(20)
select @UserId=inserted.NIC from inserted;
if update(Full_Name)
	begin
	set @Action='Full_Name Updated';
	end;
if update(Address)
	begin 
	set @Action ='Address Updated';
	end;
if update(Gender)
	begin
	set @Action='Gender Updated';
	end;
insert into User_Logs values(@UserId,@Action);
end;