create database T23_10849;
create table PostGradUser
(
id int Primary Key Identity,
email varchar(50), 
password varchar(20));
create table Admin
(id int primary key,
foreign key (id) references PostGradUser on delete cascade on update cascade);
create table GucianStudent
(
id int primary key,
foreign key (id) references PostGradUser on delete cascade on update cascade,
first_name varchar(20), 
last_name varchar(20), 
type bit,
faculty varchar(20),
address varchar(50),
GPA decimal (3,2),
undergradID int not null);
create table NonGucianStudent
(
id int primary key,
foreign key (id) references PostGradUser on delete cascade on update cascade,
first_name varchar(20), 
last_name varchar(20), 
type bit,
faculty varchar(20),
address varchar(50),
GPA decimal (3,2));
create table GUCStudentPhoneNumber
(id int primary key references GucianStudent(id),
phone

