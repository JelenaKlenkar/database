

#c:\xampp\mysql\bin\mysql -ujelena -pjelena --default_character_set=utf8 < "C:\Users\Jelena\database\high_school.sql"

drop database if exists high_school;
create database high_school default character set utf8;
use high_school;

create table highSchoolClass(
id int not null primary key auto_increment,
nameOfClass varchar (50) not null

);

create table highschoolstudent(
id int not null primary key auto_increment,
firstName varchar(50) not null,
lastName varchar(50) not null,
personalIdentificationNumber int,
highSchoolClass int not null
);

create table teacher(
id int not null primary key auto_increment,
firstName varchar(50),
lastName varchar(50),
personalIdentificationNumber int,
highSchoolClass int not null
);

alter table highschoolstudent add foreign key (highSchoolClass) references highSchoolClass(id);
alter table teacher add foreign key (highSchoolClass) references highSchoolClass(id);

insert into highSchoolClass(nameOfClass) values
#1
('a'),
#2
('b'),
#3
('c');

insert into highschoolstudent(firstName,lastName,highSchoolClass) values
#1
('Mike','Tyson',1),
#2
('Molly','Morgan',2),
#3
('Kelly','Clark',3);

insert into teacher (firstName,lastName,highSchoolClass) values ('Miss','Piggy',1), ('Mr.','Frog',2),('Nikola','Tesla',3);


update teacher set firstName ='Thomas' where id =1;
update teacher set lastName='Edison' where id =1;

delete from teacher where id = 2;


