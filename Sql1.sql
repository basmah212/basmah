create database T23_10849;
create table Student
(
id int Primary Key Identity,
first_name varchar(20), 
last_name varchar(20), 
email varchar(50), 
password varchar(20), 
type bit,
faculty varchar(20),
address varchar(10),
GPA decimal (3,2)
)
create table GucianStudent
(id int primary key references Student(id),undergradID int not null)
create table NonGucianStudent
(id int primary key references Student(id),underGradId int not null)
create table GUCStudentPhoneNumber
(id int primary key references GucianStudent(id),
phone

