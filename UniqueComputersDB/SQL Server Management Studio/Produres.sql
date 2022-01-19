create procedure CustomerDetails
as
begin
select * ,Email from Users u,Customer c
where c.NIC=u.NIC;
end;

create procedure SupplierDetails
as
begin
select *,Bussiness_Name,Fax from Users u,Supplier s
where u.NIC=s.NIC;
end;

create procedure EmployeeDetails
as
begin
select *, Working_hrs, Salary from Users u, Employee e
where u.NIC=e.NIC;
end;

create procedure CounterDetails
as
begin
select u.*,c.Cou_Id, e.Working_hrs, e.Salary from Users u
join Employee e on u.NIC=e.NIC
join Counter c on e.Emp_Id=c.Emp_Id;
end;

create procedure TechnicianDetails
as
begin
select u.*,t.Tech_Id, e.Working_hrs, e.Salary from Users u
join Employee e on u.NIC=e.NIC
join Technician t on e.Emp_Id=t.Emp_Id;
end;

create procedure SalespersonDetails
as
begin
select u.*,s.S_Id, e.Working_hrs, e.Salary from Users u
join Employee e on u.NIC=e.NIC
join Sales_Person s on e.Emp_Id=s.Emp_Id;
end;

create procedure RepairmanDetails
as
begin
select u.*,r.Rep_id, e.Working_hrs, e.Salary from Users u
join Employee e on u.NIC=e.NIC
join Repairman r on e.Emp_Id=r.Emp_Id;
end; 

create procedure UpdateAddress (@id varchar(10), @address varchar(60))
as
begin
update Users set Address=@address where NIC=@id;
end;