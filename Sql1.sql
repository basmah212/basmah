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
field
type
title
startDate
endDate
defenseDate
years as (Year(startDate)-Year(endDate)),
grade 
payment_id int
noExtension
