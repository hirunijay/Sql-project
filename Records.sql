insert into Users(NIC,Full_name,Address,Gender) values(
'965896451V','Manula Senadeera','Kadawatha,Colombo','Male'),
('687685987V','Kamal Nuwanga', 'Polgahagawela,Kurunegala','Male'),
('796598452V','Saman Gunarathne','Nawaloka Road,Nugegoda','Male'),
('985631245V','Maneka Sashini','Panadura, Kalutara','Female'),
('975631528V','Kamani Jayasekara','YMBA road,Gampaha','Female'),
('883526451V','Sahan Herath','Mawathagama,Kurunegala','Male'),
('856523415V','Indika Eranga','Muruthalawa,Kandy','Male'),
('945632851V','Charitha Bandara','Ranwala,Kegalle','Male'),
('745895632V','Peshala Gunasekara','Nawala Road,Nugegoda','Male'),
('965231254V','Aditya Gunarathne','Kekanadura,Matara','Male'),
('695846254V','Bimsara Fernando','Maharagama,Colombo','Male'),
('654231254V','Anuradha Jayathilake','Uthuwankanda,Mawanella','Male'),
('985647784V','Kalani Chandrasiri','Yakkalamulla,Galle','Female'),
('748563129V','Avantha Bandara','Pitipana,Homagama','Male'),
('887456321V','Buddhika Premasiri','Polgahawela,Kurunegala','Male'),
('836459631V','Chathura Kumara','Nelundeniya,Kegalle','Male'),
('824561235V','Kusal Senadeera','Maharagama,Colombo','Male'),
('778564125V','Manoja Rathnayaka','Nawala,Nugegoda','Female'),
('948567123V','Amaya Gunathilake','Panadura,Kalutara','Female'),
('998574613V','Chamal Rajasinghe','Kekanadura,Matara','Male'),
('784512365V','Sachini Hemachandra','Mawathagama,Kurunegala','Female'
);

insert into Selling_Items(Sell_Pro_Id,Sell_Pro_name,Warranty,Price) values(
'BK034','APPLE 6 PLUS BLUE BACK COVER',0,250.00),
('CC234','HIKVISION CAMERA AND DVR',2,2500.00),
('DC634','INTEL CORE I3/DELL',1,85900.00),
('FD634','KIGSTON DTSWIV/32GB',0,1400.00),
('FD635','KIGSTON DTSWIV/64GB',0,2800.00),
('HP234','HEADPHONE-HAVIT HV-H2218D',1,1800.00),
('LT534','ASUS GAMING LAPTOP',2,195000.00),
('LT536','ACER ASPIRE3 GEN LAPTOP',1,80000.00),
('M3400','AOC 19" LED E970SWN5 MONITOR',1,11500.00),
('MP784','EPSONE MULTIMEDIA PROJECTOR',5,66500.00),
('N4334','CAT5 1M NETWORK CABLE',0,1000.00),
('S4004','SUBWOOFER SONIGEAR',0,4200.00
); 

insert into User_telephone(NIC,Telephone) values(
'687685987V','0112345673'),
('784512365V','0112476634'),
('695846254V','0704521345'),
('745895632V','0704586785'),
('796598452V','0712345600'),
('856523415V','0713005457'),
('883526451V','0727345456'),
('945632851V','0753546577'),
('965896451V','0765050771'),
('975631528V','0777345456'),
('985631245V','0783221345'),
('856523415V','0732541364'
);

Insert into Selling_type(Type_Id,Sell_Pro_Id,Type,Description)
values('CT001','CC234','Camera','No description'),
('HT102','HP234','Head Phone','Made in China.Connectivity'),
('MT492','MP784',' LCD','No description'),
('ST980','S4004','SPEAKER ','FM Radio, USB playbac,MP3 playback'),
('LT338','LT534','Laptop Tablets ','FREE Gaming Backpack'),
('DCT89','DC634','Computer','Dell Branded Usb Mouse,Usb Keyboard,18.5" Monitor'),
('GCT48','LT534','Mobile','No description'),
('LTT34','LT536','Laptops Tablets','Acer'),
('MT680','M3400','Monitors','No description'),
('BK46','BK034','Mobile','No description'),
('NT956','N4334','Network  device','No description'
);

Insert into Employee values('1111','695846254V',8,40000.00,'1969-11-21');
Insert into Employee values('1112','745895632V',9,45000.00,'1974-02-11');
Insert into Employee values('1123','748563129V',8,40000.00,'1974-12-25');
Insert into Employee values('1113','778564125V',10,50000.00,'1977-10-01');
Insert into Employee values('1234','856523415V',7,35000.00,'1985-01-31');
Insert into Employee values('1141','824561235V',8,40000.00,'1982-08-16');
Insert into Employee values('1337','883526451V',5,25000.00,'1988-04-15');
Insert into Employee values('1459','948567123V',8,40000.00,'1994-03-29');
Insert into Employee values('1734','965896451V',9,45000.00,'1996-05-02');
Insert into Employee values('1356','985631245V',5,25000.00,'1998-07-22');
Insert into Employee values('1988','998574613V',10,50000.00,'1999-12-30');

insert into Invoice(Emp_id,Cus_id,Payment_Method)values(
'1112',1,'Bank Transfer'),
('1234',3,'Credit Card'),
('1141',4,'Credit Card'),
('1112',5,'Cash'),
('1123',6,'Cash'),
('1459',2,'Check'),
('1337',3,'Cash'),
('1123',4,'Mobile Payment'),
('1988',6,'Cash'),
('1988',1,'Credit Card'),
('1141',5,'Bank Transfer'
);

Insert into Supplier values('4999','945632851V','Barclays Computers (Pvt) Ltd','0112345689');
Insert into Supplier values('5001','965231254V','Enrich Trade Link Pvt. Ltd.','0113465689');
Insert into Supplier values('5002','975631528V','J Computers','011456789');
Insert into Supplier values('5003','985647784V','AllSafe Computers (Pvt) Ltd','0358574156');
Insert into Supplier values('5009','998574613V','E Traders Ltd.','0115896412');

Insert into  items_Supplier  values('4999','CC234',20);
Insert into  items_Supplier  values('5001','BK034',43);
Insert into  items_Supplier  values('5002','DC634',9);
Insert into  items_Supplier  values('5003','S4004',7);
Insert into  items_Supplier  values('4999','FD634',10);
Insert into  items_Supplier  values('5001','FD635',15);
Insert into  items_Supplier  values('5003','HP234',22);
Insert into  items_Supplier  values('5002','LT534',21);
Insert into  items_Supplier  values('5003','LT536',3);
Insert into  items_Supplier  values('5009','M3400',5);
Insert into  items_Supplier  values('4999','MP784',13);
Insert into  items_Supplier  values('5009','N4334',34);

insert into Repair(Inv_No,Rep_Des,Type)values(
2,'iPhone SE 2nd Generation Repair','Mobile'),
(3,'Google  Repair','Network device'),
(4,'Samsung Galaxy S10 Plus Charge Port Repair','Mobile'),
(5,'Samsung Galaxy S10 Plus Front Camera Repair','Camera'),
(6,'Huawei Repair 10% off 180 Days Warranty','Mobile'),
(7,'iPod Repair','Computer'),
(8,'Computer Repair','Computer'),
(9,'Game Console Repair','Laptop'),
(10,'Gadgets Repair','Monitor'),
(11,'Google Tablet Repair','Tablet'),
(12,'LG K30 Repair','LCD');

