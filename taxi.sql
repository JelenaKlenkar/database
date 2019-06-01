
#c:\xampp\mysql\bin\mysql -ujelena -pjelena --default_character_set=utf8 < "C:\Users\Jelena\database\taxi.sql"

drop database if exists taxi;
create database taxi default character set utf8;
use taxi;


create table vehicle(
id int not null primary key auto_increment,
numberOfVehicle int not null,
driver int not null
);

create table ride(
id int not null primary key auto_increment,
numberOfPassenger int not null,
vehicle int not null

);

create table passenger(
id int not null primary key auto_increment,
firstName varchar(50) not null,
departure varchar(80) not null,
arrival varchar(80) not null,
ride int not null
);

alter table ride add foreign key(vehicle) references vehicle(id);
alter table passenger add foreign key(ride) references ride(id);

insert into vehicle (numberOfVehicle, driver) values 
#1
(25, 'Jack Cornell'),
#2
(41, 'Kelly Osbourne'),
#3
(12, 'Ana Anić');

insert into ride (numberOfPassenger,vehicle) values
#1
(2,1),
#2
(2,1),
#3
(1,2), 
#4
(2,3),
#5
(2,3);

insert into passenger (firstName,departure, arrival,ride) values 
#1
('Mike','Portanova Osijek','Restaurant Gondola',1),
#2
('Homer','Portanova Osijek','Restaurant Gondola',2),
#3
('Linda','Edunova','Tvrđa',3),
#4
('Marko','Economical college Osijek','Health home Osijek',4),
#5
('Ana','Economical college Osijek','Health home Osijek',5);

update passenger set firstName = 'Molly' where id = 4;


delete from passenger where id=3;
delete from ride where id=3;
delete from vehicle where id =2;










