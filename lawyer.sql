

#c:\xampp\mysql\bin\mysql -ujelena -pjelena --default_character_set=utf8 < "C:\Users\Jelena\database\lawyer.sql"

drop database if exists lawyer;
create database lawyer default character set utf8;
use lawyer;

create table client(
id int not null primary key auto_increment,
firstName varchar(50) not null,
lastName varchar(50) not null,
personalIdentificationNumber
);

create table defense(
id int not null primary key auto_increment,
dateOfDefense date time not null,
client int not null

);

create table associate(
id int not null primary key auto_increment,
firstname varchar(50) not null,
lastName varchar(50) not null,
personalIdentificationNumber int,
defense int not null
);

alter table defense add foreign key (client) references client(id);
alter table associate add foreign key (defense) references defense(id);

insert into client(firstName,lastName) values
#1
('Mate','Wolf'),
#2
('Anna','Karenina'),
#3
('Igor','Bilić');

insert into defense (dateOfDefense,client) values
#1
('2019-05-06',1),
#2
('2019-05-14',2),
#3
('2019-06-01',3);

insert into associate(firstName,lastName,defense) values ('Harry','Potter',1), ('Harry','Potter', 2), ('Jon','Snow',3), ('Jon','Snow',2);

update client set firstName ='Jessica' where id =3;
update client set lastName='Rabbit' where id =3;

delete from client where id=3;