

#c:\xampp\mysql\bin\mysql -ujelena -pjelena --default_character_set=utf8 < "C:\Users\Jelena\database\priest.sql"

drop database if exists priest;
create database priest default character set utf8;
use priest;

create table priest(
id int not null primary key auto_increment,
firstName varchar(50) not null,
lastName varchar(50) not null,
superior int not null
);

create table job(
id int not null primary key auto_increment,
typeOfJob varchar (100),
startWorking time not null,
finishWorking time not null,
priest int not null
);


alter table priest add foreign key (superior) references priest (id);
alter table job add foreign key (priest) references priest (id);


insert into priest (firstName,lastName,superior) values
#1
('Josip','Bozanić',1),
#2
('Vinko','Puljić',1),
#3
('Mate','Uzinić',1),
#4
('Vlado','Košić',1)
;

insert into job (typeOfJob,startWorking,finishWorking,priest) values ('cooking','07:30:00','15:30:00',2),
('cleaning bathroms','09:00:00','12:15:00',3), ('washing floors','15:30:00','21:25:00',4);

update job set priest = 4 where id = 2;


delete from priest where id =3;
delete from  job where id =2;




