create table Users(
NIC varchar(10),
Full_name varchar(50),
Address varchar(60),
Gender varchar(6),
constraint pk_users primary key(NIC)
);

create table User_telephone(
NIC varchar(10),
Telephone char(10)
constraint pk_usertelephone primary key(NIC,Telephone),
constraint fk_usertelephone foreign key(NIC) references Users(NIC)
);

create table Selling_Items(
Sell_Pro_Id varchar(5),
Sell_Pro_name varchar(30),
Warranty int,
Price money
constraint pk_sellingitem primary key(Sell_Pro_Id),
constraint wty_years check (Warranty<=10)
);

create table Selling_Type(
Type_Id varchar(5),
Sell_Pro_Id varchar(5),
Type varchar(15),
Description varchar(60)
constraint pk_sellingtype primary key(Type_Id),
constraint fk_sellingytype foreign key(Sell_Pro_Id) references Selling_Items(Sell_Pro_Id)
);

create table Employee(
Emp_Id varchar(5),
NIC varchar(10),
Working_hrs int,
Salary money
constraint pk_employee primary key(Emp_id),
constraint fk_employee foreign key(NIC) references Users(NIC)
);

create table Customer(
Cus_Id int identity(1,1),
NIC varchar(10),
Email varchar(60)
constraint pk_customer primary key(Cus_Id),
constraint fk_customer foreign key(NIC) references Users(NIC),
constraint check_email check(Email like '%_@__%.__%')
);

create table Invoice(
Invoice_No int identity(1,1),
Emp_id varchar(5),
Cus_id int,
Payment_Method varchar(10),
constraint pk_invoice primary key(Invoice_No),
constraint fk_invoice1 foreign key (Emp_Id) references Employee(Emp_Id),
constraint fk_invoice2 foreign key (Cus_Id) references Customer(Cus_Id)
);

create table Sell_Invoice(
Sell_Pro_Id varchar(5),
Inv_No int,
Issued_Date date
constraint pk_sellinvoice primary key(Sell_Pro_Id,Inv_No),
constraint fk_sellinvoice1 foreign key(Sell_Pro_Id) references Selling_Items(Sell_Pro_Id),
constraint fk_sellinvoice2 foreign key(Inv_No) references Invoice(Invoice_No)
);

create table Supplier(
Supplier_Id varchar(5),
NIC varchar(10),
Bussiness_Name varchar(30),
Fax char(10)
constraint pk_supplier primary key(Supplier_Id),
constraint fk_supplier foreign key(NIC) references Users(NIC)
);

create table Items_Supplier(
Supplier_Id varchar(5),
Sell_Pro_Id varchar(5),
Quantity int
constraint pk_itemssupplier primary key(Supplier_Id,Sell_Pro_Id),
constraint fk_itemssupplier1 foreign key(Supplier_id) references Supplier(Supplier_id),
constraint fk_itemssupplier2 foreign key(Sell_Pro_Id) references Selling_Items(Sell_Pro_Id)
);

create table Repair(
Rep_Id int identity(1,1),
Inv_No int,
Rep_Des varchar(100),
Type varchar(50),
constraint pk_repair primary key(Rep_Id),
constraint fk_repair foreign key(Inv_No) references Invoice(Invoice_No)
);

create table Counter(
Cou_Id int identity(1,1),
Emp_Id varchar(5),
constraint pk_counter primary key(Cou_Id),
constraint fk_counter foreign key(Emp_id) references Employee(Emp_Id)
);

create table Technician(
Tech_Id int identity(1,1),
Emp_Id varchar(5),
constraint pk_technician primary key(Tech_Id),
constraint fk_technician foreign key(Emp_Id) references Employee(Emp_Id)
);

create table Sales_Person(
S_Id int identity(1,1),
Emp_Id varchar(5),
constraint pk_salesperson primary key(S_Id),
constraint fk_salesperson foreign key(Emp_Id) references Employee(Emp_Id)
);

create table Repairman(
Rep_id int,
Emp_Id varchar(5),
constraint pk_repairman primary key(Rep_id),
constraint fk_repairman foreign key(Emp_Id) references Employee(Emp_Id)
);

create table User_Logs(
LogId int identity(1,1),
UserNIC varchar(10),
Action varchar(20)
);