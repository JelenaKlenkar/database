#c:\xampp\mysql\bin\mysql -ujelena -pjelena --default_character_set=utf8 < "E:\doctor.sql"

drop database if exists doctor;
create database doctor default  character set utf8;
use doctor;

create table patient(
id int not null primary key auto_increment,
firstName varchar(50) not null,
lastName varchar(50) not null,
numberOfHealthInsurance int

);

create table medicaltreatment(
id int not null primary key auto_increment,
diagnosis varchar(50) not null,
medicine varchar(100) not null,
patient int not null

);

create table nurse(
id int not null primary key auto_increment,
firstName varchar(50) not null,
lastName varchar(50) not null,
personalIdentificationNumber int,
medicaltreatment int not null

);

alter table medicaltreatment add foreign key (patient) references patient(id);
alter table nurse add foreign key (medicaltreatment) references medicaltreatment(id);

insert into patient(firstName,lastName) values 
#1
('Mario','Marić'),
#2
('Jessica','Rabit'),
#3
('John','Smith');

insert into medicaltreatment(diagnosis,medicine,patient) values 
#1
('Gastritis','Controloc',1),
#2
('Conjuctivitis','Tobramicin',2),
#3
('Thrombosis','Warfarin',3)
;

insert into nurse (firstName,lastName,medicaltreatment) values ('Anica','Dobrić',2),('Maria','Marković',2),('Sara','Sarić',3);

update patient set firstName ='Anna'  where id =2;
update patient set lastName ='Smith' where id =2;
update  medicaltreatment set diagnosis ='Cystitis' where id=2;
update medicaltreatment set medicine='ninur' where id=2;
 
delete from nurse where id =3;
delete from medicaltreatment where id =3;
delete from patient where id =3;
