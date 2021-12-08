create database T23_10849;
create table PostGradUser
(
id int Primary Key Identity,
email varchar(50), 
password varchar(20));
create table Admin
(id int primary key references PostGradUser(id));
create table GucianStudent
(
id int primary key references PostGradUser(id),
first_name varchar(20), 
last_name varchar(20), 
type bit,
faculty varchar(20),
address varchar(50),
GPA decimal (3,2),
undergradID int not null);
create table NonGucianStudent
(
id int primary key references PostGradUser(id),
first_name varchar(20), 
last_name varchar(20), 
type bit,
faculty varchar(20),
address varchar(50),
GPA decimal (3,2));
create table GUCStudentPhoneNumber
(
id int primary key references GucianStudent(id),
phone varchar(20));
create table NonGUCStudentPhoneNumber
(
id int primary key references NonGucianStudent(id),
phone varchar(20));
create table Course
(
id int primary key identity,
fees decimal (3,2),
creditHours int,
code varchar(10));
create table Supervisor
(
id int primary key references PostGradUser(id),
name varchar(20),
faculity varchar(20));
create table Thesis
(
serialNumber int primary key identity,
field varchar(20),
type bit,
title varchar(50),
startDate datetime not null,
endDate datetime not null,
defenseDate datetime not null,
years as (Year(startDate)-Year(endDate)),
grade decimal,
payment_id int,	
noExtension int);
create table Publication
(
id int primary key identity,
title varchar (50),
date datetime,
place varchar(50),
accepted bit,
host varchar(50));
create table Payment
(
id int primary key identity,
amount decimal,
no_installments int,
fundPercentage decimal);
