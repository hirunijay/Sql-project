CREATE DATABASE ComputerShop;
USE ComputerShop;

CREATE TABLE Users(
NIC varchar(10) NOT NULL,
Full_Name varchar(50) NOT NULL,
U_Address varchar(60) ,
Gender varchar(6),
CONSTRAINT pk_users PRIMARY KEY(NIC)
);

INSERT INTO Users values('S10001','Indika Eranga','Muruthalawa,Kandy', 'Male');
INSERT INTO Users values('S10005','Charitha Bandara','Mawathagama,Kurunegala', 'Male');
INSERT INTO Users values('C10025','Sachini Hemachandra','Mawathagama,Kurunegala', 'Female');
INSERT INTO Users values('E10245','Menaka Shehani','Panadura,Kalutara', 'Female');
INSERT INTO Users values('C10027','Manula Sanadeera','Kadawatha,Colombo', 'Male');
INSERT INTO Users values('C10028','Saman Gunarathna','Nawaloka Road,Nugegoda', 'Male');
INSERT INTO Users values('S10006','Peshala Gunasekara','Nawala Road,Nugegoda', 'Male');
INSERT INTO Users values('S10007','Bimsara Fernando','Maharagama,Colombo', 'Male');
INSERT INTO Users values('E10252','Kamani Jayasekara','YMBA Road,Gampaha', 'Female');
INSERT INTO Users values('E10253','Sahan Herath','Mawathagama,Kurunegala', 'Male');
INSERT INTO Users values('C100230','Kamal Nuwanga','Pogahawela,Kurunegala', 'Male');


Select * from Users;

CREATE TABLE UserTelephone(
NIC varchar(10) NOT NULL,
Telephone char(10) NOT NULL,
CONSTRAINT pk_telephone PRIMARY KEY(Telephone,NIC),
CONSTRAINT fk_userTelephone FOREIGN KEY(NIC) REFERENCES Users(NIC)


);


INSERT INTO UserTelephone values('S10001','0777345456');
INSERT INTO UserTelephone values('S10001','0727345456');
INSERT INTO UserTelephone values('S10005','0713005457');
INSERT INTO UserTelephone values('S10007','0765050771');
INSERT INTO UserTelephone values('S10007','0112476634');
INSERT INTO UserTelephone values('C100230','0783221345');
INSERT INTO UserTelephone values('E10253','0112345673');
INSERT INTO UserTelephone values('E10253','0712345600');
INSERT INTO UserTelephone values('E10245','0704586785');
INSERT INTO UserTelephone values('S10006','0753546577');
INSERT INTO UserTelephone values('C10025','0704521345');

Select * from UserTelephone;

CREATE TABLE Selling_item(
Sell_Pro_ID varchar(5) NOT NULL,
Sell_Pro_Name varchar(30)  UNIQUE,
Warranty int CHECK (Warranty<= 10),
price money NOT NULL,
CONSTRAINT Pk_Sell_Pro_ID PRIMARY KEY(Sell_Pro_ID)

);

INSERT INTO Selling_item values('CC234','HIKVISION CAMERA AND DVR',2,'2500.00');
 
INSERT INTO Selling_item values('HP234','HEADPHONE-HAVIT HV-H2218D',1,'1800.00');
INSERT INTO Selling_item values('MP784','Epsone Mutimedia Projector',5,'66500.00');
INSERT INTO Selling_item values('S4004','Subwoofer Sonigear',NULL,'4200.00');
INSERT INTO Selling_item values('LT534','Asus Gaming LapTop',2,'195000.00');
INSERT INTO Selling_item values('DC674',' INTEL CORE I3/DELL',1,'85900.00');
INSERT INTO Selling_item values('FD634','Kingston DTSWIV/32GB',Null,'1400.00');
INSERT INTO Selling_item values('FD635','Kingston DTSWIV/64GB',1,'2800.00');
INSERT INTO Selling_item values('LT536','ACER ASPIRE3 GEN LAPTOPS',1,'80000.00');
INSERT INTO Selling_item values('FD655','KINGSTON 16GB 3.1/3.0USB FLASH DRIVE',Null,'900.00');
INSERT INTO Selling_item values('M3400','AOC 19” LED E970SWN5 MONITOR',1,'11500.00');
INSERT INTO Selling_item values('N334','CAT5 1M NETWORK CABLE',Null,'100.00');
INSERT INTO Selling_item values('BK034','APPLE 6 PLUS BLUE BACK COVER',Null,'250.00');
select * from Selling_item;


create table Selling_type(
Type_ID varchar(5) NOT NULL,
Sell_Pro_ID varchar(5) NOT NULL,
SType varchar(15) NOT NULL,
SDescription varchar(60),
Constraint pk_Stype_ID  PRIMARY KEY (Type_ID),
Constraint fk_Sell_pro_ID  FOREIGN KEY(Sell_pro_ID) REFERENCES Selling_item(Sell_pro_ID),
);

Insert into Selling_type values('CT001','CC234','Camera',NULL);
Insert into Selling_type values('HT102','HP234','Head Phone','Made in China.Connectivity');
Insert into Selling_type values('MT492','MP784',' LCD',Null);
Insert into Selling_type values('ST980','S4004','SPEAKER ','FM Radio, USB playbac,MP3 playback');
Insert into Selling_type values('LT338','LT534','Laptop Tablets ','FREE Gaming Backpack');
Insert into Selling_type values('DCT89','DC674','Computer','Dell Branded Usb Mouse,Usb Keyboard,18.5" Monitor');
Insert into Selling_type values('GCT48','LT534','Mobile',NULL);
Insert into Selling_type values('LTT34','LT536','Laptops Tablets','Acer');
Insert into Selling_type values('MT680','M3400','Monitors',Null);
Insert into Selling_type values('BK46','BK034','Mobile',Null);
Insert into Selling_type values('NT956','N334','Network  device',Null);

Select * from Selling_type;


CREATE TABLE Employee(
Emp_ID varchar(5) NOT NULL,
NIC varchar(10) NOT NULL,
WorkingHours int ,
Salary  money default(40000.00),
CONSTRAINT pk_Empid PRIMARY KEY(Emp_ID),
CONSTRAINT fk_NIC FOREIGN KEY(NIC) REFERENCES Users(NIC)
);

Insert into Employee values('1111','E10245',8,default);

Insert into Employee values('1112','E10252',9,default);
Insert into Employee values('1123','E10253',8,default);
Insert into Employee values('1113','E10245',10,default);
Insert into Employee values('1234','E10245',7,default);
Insert into Employee values('1141','E10253',8,default);
Insert into Employee values('1337','E10253',8,default);
Insert into Employee values('1459','E10245',8,default);
Insert into Employee values('1734','E10252',9,default);
Insert into Employee values('1356','E10253',8,default);
Insert into Employee values('1988','E10245',10,default);

Select * from Employee;

Create table Customer(
Cus_ID int NOT NULL IDentity(2000,1),
NIC varchar(10) NOT NULL,
Email varchar(60),
CONSTRAINT pk_cusid PRIMARY KEY(Cus_ID),
CONSTRAINT fk_NIC2 FOREIGN KEY(NIC) REFERENCES Users(NIC)

);

Insert into Customer values( 'C10027','manulasenadeera@gmail.com');
Insert into Customer values( 'C10025','sachinihemachandra@gmail.com');
Insert into Customer values( 'C10028','samangunarathna@gmail.com');
Insert into Customer values( 'C10027','manulasenadeera@gmail.com');
Insert into Customer values( 'C100230','kamalnuwanga@gmail.com');
Insert into Customer values( 'C10027','manulasenadeera@gmail.com');
Insert into Customer values( 'C10028','samangunarathna@gmail.com');
Insert into Customer values( 'C10027','manulasenadeera@gmail.com');
Insert into Customer values( 'C10027','manulasenadeera@gmail.com');
Insert into Customer values('C10025','sachinihemachandra@gmail.com');
Insert into Customer values( 'C10027','manulasenadeera@gmail.com');

select * from Customer;

CREATE TABLE Invoice(
Invoice_No int NOT NULL Identity(0001,3),
Emp_ID varchar(5) NOT NULL,
Cus_ID INT NOT NULL,
Payment_method varchar(20),
CONSTRAINT pk_InvoiceNo PRIMARY KEY(Invoice_NO),
CONSTRAINT fk_EmpID FOREIGN KEY(Emp_ID) REFERENCES Employee(Emp_ID),
CONSTRAINT fk_CusID FOREIGN KEY(Cus_ID) REFERENCES Customer(Cus_ID)
);

 
select * from Invoice;

Create table Sell_Invoice(
Sell_Pro_ID varchar(5) NOT NULL,
Invoice_No int NOT NULL ,
Constraint pk_sell_invoice PRIMARY KEY(Sell_pro_ID,Invoice_No),
Constraint fk_Sell_pro_ID2 Foreign key(Sell_pro_id) references Selling_item(Sell_pro_id),
Constraint fk_Invoice_NO Foreign key(Invoice_NO) references Invoice(Invoice_NO),
);

Insert into Sell_invoice values('CC234','4');
Insert into Sell_invoice values('S4004','10');
Insert into Sell_invoice values('HP234','31');
Insert into Sell_invoice values('FD634','28');
Insert into Sell_invoice values('MP784','13');
Insert into Sell_invoice values('CC234','31');
Insert into Sell_invoice values('FD655','16');
Insert into Sell_invoice values('BK034','19');
Insert into Sell_invoice values('FD655','22');
Insert into Sell_invoice values('M3400','25');
Insert into Sell_invoice values('CC234','1');
Insert into Sell_invoice values('HP234','13');

select * from Sell_Invoice;

CREATE TABLE Supplier(

Supplier_ID varchar(5) NOT NULL,
NIC varchar(10) NOT NULL,
Business_Name varchar(30),
Fax char(10),
CONSTRAINT pk_SupplierID PRIMARY KEY(Supplier_ID),
CONSTRAINT fk_NIC3 FOREIGN KEY(NIC) REFERENCES Users(NIC)

);

Insert into Supplier values('4999','S10001','Barclays Computers (Pvt) Ltd','0112345689');
Insert into Supplier values('5001','S10005','Enrich Trade Link Pvt. Ltd.','0113465689');
Insert into Supplier values('5002','S10006','J Computers','011456789');
Insert into Supplier values('5003','S10001','Barclays Computers (Pvt) Ltd','0112345689');
Insert into Supplier values('5004','S10007',' Aurora',Null);
Insert into Supplier values('5005','S10006','J Computers','011456789');
Insert into Supplier values('5006','S10001','Barclays Computers (Pvt) Ltd','0112345689');
Insert into Supplier values('5007','S10007',' Aurora',Null);
Insert into Supplier values('5008','S10006','J Computers','011456789');
Insert into Supplier values('5009','S10005','Enrich Trade Link Pvt. Ltd.','0113465689');
Insert into Supplier values('5010','S10007',' Aurora',Null);

select * from Supplier;

create table items_Supplier(
Supplier_ID varchar(5) NOT NULL,
Sell_Pro_ID varchar(5) NOT NULL,
Quantity int,
Constraint pk_items_supplier PRIMARY KEY(Sell_pro_ID,Supplier_ID),
Constraint fk_Sell_pro_ID3 Foreign key(Sell_pro_id) references Selling_item(Sell_pro_id),
Constraint fk_SupplierID Foreign key(Supplier_ID) references Supplier(Supplier_ID)



);

Insert into  items_Supplier  values('4999','CC234');
Insert into  items_Supplier  values('5001','BK034');
Insert into  items_Supplier  values('5002','DC674');
Insert into  items_Supplier  values('5003','DC674');
Insert into  items_Supplier  values('5004','FD634');
Insert into  items_Supplier  values('5005','FD635');
Insert into  items_Supplier  values('5006','HP234');
Insert into  items_Supplier  values('5007','LT534');
Insert into  items_Supplier  values('5008','LT536');
Insert into  items_Supplier  values('5009','M3400');
Insert into  items_Supplier  values('5010','MP784');
Insert into  items_Supplier  values('5009','N334');
select * from items_Supplier;

create table Repair(
Repair_ID int NOT NULL IDENTITY(1,1),
Invoice_No  int,
type varchar(50),
Rep_Des varchar(100),
Constraint pk_Repair_ID PRIMARY KEY(Repair_ID),
Constraint fk_invoice_NO3 Foreign key(Invoice_NO) references invoice(Invoice_No),
);

insert into Repair values('1','iPhone SE 2nd Generation Repair','A2275,A2296,A2298');
insert into Repair values('4','Google  Repair',Null);
insert into Repair values('7','Samsung Galaxy S10 Plus Charge Port Repair',null);
insert into Repair values('10','Samsung Galaxy S10 Plus Front Camera Repair',null);
insert into Repair values('13','Huawei Repair','Get a Fast Repair 10% off on all Motorola Repairs and 180 Days Warranty on all Repairs');
insert into Repair values('16','iPod Repair',Null);
insert into Repair values('19','Computer Repair',Null);
insert into Repair values('22','Game Console Repair',Null);
insert into Repair values('25','Gadgets Repair',NULL);
insert into Repair values('28','Google Tablet Repair',Null);
insert into Repair values('31','LG K30 Repair',Null);
Select * from Repair;

create table Counter(
Cou_ID int IDENTITY (1,1) NOT NULL,
Emp_ID varchar(5) NOT NULL, 
CONSTRAINT pk_CouID PRIMARY KEY(Cou_ID),
CONSTRAINT fk_EmpID2 FOREIGN KEY(Emp_ID) REFERENCES Employee(Emp_ID)
);

insert into CounterIn values('1111');
insert into CounterIn values('1112');
select * from CounterIn;

create table Technician(
Tech_ID int IDENTITY (8000,1) NOT NULL,
Emp_ID varchar(5) NOT NULL, 
CONSTRAINT pk_TechID PRIMARY KEY(Tech_ID),
CONSTRAINT fk_EmpID3 FOREIGN KEY(Emp_ID) REFERENCES Employee(Emp_ID)
);

insert into Technician values('1141');
insert into Technician values('1234');
insert into Technician values('1113');

SELECT * from Technician;

create table repairman(
RepM_ID int IDENTITY (6000,1) NOT NULL,
Emp_ID varchar(5) NOT NULL, 
CONSTRAINT pk_RepMID PRIMARY KEY(RepM_ID),
CONSTRAINT fk_EmpID5 FOREIGN KEY(Emp_ID) REFERENCES Employee(Emp_ID)
);

insert into repairman values('1337');
insert into repairman values('1988');
insert into repairman values('1123');

SELECT * from repairman;


create table Sales_Person(
S_ID int IDENTITY (4000,1) NOT NULL,
Emp_ID varchar(5) NOT NULL, 
CONSTRAINT pk_SID PRIMARY KEY(S_ID),
CONSTRAINT fk_EmpID6 FOREIGN KEY(Emp_ID) REFERENCES Employee(Emp_ID)
);

insert into Sales_Person values('1459');
insert into Sales_Person values('1734');
insert into Sales_Person values('1356');

SELECT * from Sales_Person;









