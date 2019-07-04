
/*
c:\xampp\mysql\bin\mysql -ujelena -pjelena --default_character_set=utf8 < "E:\animal.sql"
*/


drop database if exists animal;
create database animal default character set utf8;
use animal;

create table volounteer(
id int not null primary key auto_increment,
firstName varchar(50) not null,
lastName varchar(50) not null,
personalIdentificationNumber int
);

create table animal(
id int not null primary key auto_increment,
name varchar(50) not null,
volounteer int not null,
cage int not null
);

create table cage(
id int not null primary key auto_increment,
numberOfCage int not null

);


alter table animal add foreign key (volounteer) references volounteer(id);

alter table animal add foreign key (cage) references cage(id);

insert into volounteer(firstName,lastName) values
#1
('Julia','Roberts'), 
#2
('Marko', 'Marković'), 
#3
('Shaquille','O''Neal');



insert into cage (numberOfCage) values 
#1
(20),
#2
(54);

insert into animal(name,volounteer,cage) values('Gricko',1,1),('Mrvica',1,1),('Dodo',3,2),('Podo',2,2),('Kodo',3,1);

update animal set name ='Bubica' where id = 3;

delete from animal where id =3;


