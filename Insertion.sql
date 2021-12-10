--Users
-- PostGradUser insertion
Set IDENTITY_INSERT PostGradUser ON
	--GucianStudent
insert into PostGradUser (id,email,password) values (1,'anthony@gmail.com','u8nN}B');
insert into PostGradUser (id,email,password) values (2,'ashraf@gmail.com','n6B~/J');
insert into PostGradUser (id,email,password) values (3,'malak@gmail.com','\2Lz$?');
insert into PostGradUser (id,email,password) values (4,'lara@gmail.com','[8]wPV');
insert into PostGradUser (id,email,password) values (5,'Omar@gmail.com','X4,$e{');
	--NonGucianStudent
insert into PostGradUser (id,email,password) values (6,'Mohamed@gmail.com','Y~dU4j');
insert into PostGradUser (id,email,password) values (7,'Fred@gmail.com','q#8XkF');
insert into PostGradUser (id,email,password) values (8,'Nour@gmail.com','kA8+Yc');
insert into PostGradUser (id,email,password) values (9,'Toby@gmail.com','3:XMzP');
insert into PostGradUser (id,email,password) values (10,'Jared@gmail.com',']aE7-,');
	--Admin
insert into PostGradUser (id,email,password) values (11,'Hossam@gmail.com','H5Zb:H');
insert into PostGradUser (id,email,password) values (12,'Slim@gmail.com','rSC4>>');
	--Supervisor
insert into PostGradUser (id,email,password) values (13,'Yara@gmail.com','$7S%y^');
insert into PostGradUser (id,email,password) values (14,'Lobna@gmail.com','}fL37*');
	--Examiner
insert into PostGradUser (id,email,password) values (15,'Mervat@gmail.com','$X8aJc');
insert into PostGradUser (id,email,password) values (16,'Omneya@gmail.com','aY;3S');
Set IDENTITY_INSERT PostGradUser OFF

--GucianStudent insertion
insert into GucianStudent (id,first_name,last_name,type,faculty,address,GPA,undergradID)values 
(1,'Anthony','Ibrahim',1,'Business informatics','Heliopolis',1.96,10849);
insert into GucianStudent (id,first_name,last_name,type,faculty,address,GPA,undergradID)values 
(2,'Ashraf','Ibrahim',1,'Management','Tagamo3',1.86,10578);
insert into GucianStudent (id,first_name,last_name,type,faculty,address,GPA,undergradID)values 
(3,'Malak','Ahmad',1,'Business informatics','Dokki',1.0,10308);
insert into GucianStudent (id,first_name,last_name,type,faculty,address,GPA,undergradID)values 
(4,'Lara','Guirguis',1,'Applied arts','Tagamo3',1.1,10608);
insert into GucianStudent (id,first_name,last_name,type,faculty,address,GPA,undergradID)values 
(5,'Omar','Ehab',1,'Business informatics','6th October',2.0,11905);

--NonGucianStudent insertion
insert into NonGucianStudent (id,first_name,last_name,type,faculty,address,GPA)values 
(6,'Mohamed','Gamal',0,'Business informatics','6th October',1.4);
insert into NonGucianStudent (id,first_name,last_name,type,faculty,address,GPA)values 
(7,'Fred','Thomson',0,'Business informatics','Nasr City',0.98);
insert into NonGucianStudent (id,first_name,last_name,type,faculty,address,GPA)values 
(8,'Nour','Ahmad',0,'Business informatics','Tagamo3',3.1);
insert into NonGucianStudent (id,first_name,last_name,type,faculty,address,GPA)values 
(9,'Toby','Toby',0,'Business informatics','Tagamo3',2.1);
insert into NonGucianStudent (id,first_name,last_name,type,faculty,address,GPA)values 
(10,'Jared','Rafael',0,'Architecture','Tagamo3',2.6);

--Admin insertion
insert into Admin (id) values (11);
insert into Admin (id) values (12);

--Supervisor insertion
insert into Supervisor (id,name,faculity) values (13,'Yara','Business informatics');
insert into Supervisor (id,name,faculity) values (14,'Lobna','Architecture');

--Examiner insertion
insert into Examiner (id,name,fieldOfWork,isNational) values (15,'Mervat','Proffessor',1);
insert into Examiner (id,name,fieldOfWork,isNational) values (16,'Omneya','Teacher',0);

--display tables
select * from PostGradUser;
select * from GucianStudent;
select * from NonGucianStudent;
select * from Admin;
select * from Supervisor;
select * from Examiner;
-------------------------------------------------------------------------------------
--Payment and installments insertion
insert into Payment values (500,3,0.4);
insert into Payment values (800,4,0.3);
insert into Payment values (400,2,0.7);
insert into Payment values (1000,6,0.5);
insert into Payment values (300,2,0.2);
insert into Payment values (300,1,0.1);
insert into Payment values (600,3,0.4);
insert into Payment values (1100,4,0.3);
--DBCC CHECKIDENT ('Payment',Reseed,0); (to reset identity counter)
--display payment & installments
select * from Payment;
-------------------------------------------------------------------------------------
--	Thesis (8 Master & 8 PhD)
--	Masters
insert into Thesis (field,type,title,startDate,grade)values ('Biology','Master','Climate change','8/11/2019',1.8);
insert into Thesis (field,type,title,startDate,grade,payment_id) values ('Economics','Master','Equality','7/9/2015',2.1,1);
insert into Thesis (field,type,title,startDate,endDate,grade,payment_id,noExtension)values('Business','Master','Stocks','8/1/2017','8/2/2020',1.0,2,2);
insert into Thesis (field,type,title,startDate,grade,payment_id) values ('Law','Master','Courts','4/10/2017',2.0,3);
insert into Thesis (field,type,title,startDate,grade,payment_id) values ('Economics','Master','Equilibrium point','7/9/2015',1.8,4);
insert into Thesis (field,type,title,startDate,grade,payment_id) values ('Technology','Master','Internet of things','10/9/2016',3.1,5);
insert into Thesis (field,type,title,startDate,grade)values ('Biology','Master','Astrobiology','8/5/2021',1.3);
insert into Thesis (field,type,title,startDate,grade)values ('Biology','Master','CRISPR and Genetic Engineering','9/7/2021',1.0);
insert into Thesis (field,type,title,startDate,grade)values ('Biology','Master','CRISPR and Genetic Engineering','9/7/2021',1.0);
-- Phd
insert into Thesis (field,type,title,startDate,grade,payment_id) values ('Business','PhD','Challenges of Small Enterprises','8/1/2011',3.0,6);
insert into Thesis (field,type,title,startDate,grade,payment_id) values ('Business','PhD','Regulation of Workplace Diversity','3/1/2013',1.4,7);
insert into Thesis (field,type,title,startDate,grade,payment_id) values ('Business','PhD','Business Leadership','2/1/2017',1.1,8);
insert into Thesis (field,type,title,startDate,grade)values ('Architecture','PhD','Heritage museums','9/7/2020',1.6);
insert into Thesis (field,type,title,startDate,grade)values ('Architecture','PhD','Cinema and theatre architecture','10/4/2018',2.5);
insert into Thesis (field,type,title,startDate,grade)values ('Architecture','PhD','Skyscraper design','10/5/2011',2.3);
insert into Thesis (field,type,title,startDate,grade)values ('Architecture','PhD','Suburban homes for multifamily','1/6/2017',2.1);
insert into Thesis (field,type,title,startDate,grade)values ('Law','PhD','Criminal psychology','11/9/2013',1.9);
--Display thesis table
select * from Thesis;
------------------------------------------------------------------------------------- 


