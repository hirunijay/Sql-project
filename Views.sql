create view DisplayPhone
as
select u.Full_name,t.Telephone  from Users u, User_telephone t
where u.NIC=t.NIC;

create view DisplayAge
as
select e.Emp_Id,u.Full_name, dbo.CalAge(e.Emp_Id) as Age from Employee e,Users u
where e.NIC=u.NIC;

create view SupplierInfo
as
select s.Supplier_Id, u.Full_name, s.Bussiness_Name from Supplier s join Users u
on s.NIC=u.NIC;

create view SoldItems
as
select s.Sell_Pro_Id,s.Sell_Pro_name,si.Issued_Date from Selling_Items s join Sell_Invoice si
on s.Sell_Pro_Id=si.Sell_Pro_Id;
