#c:\xampp\mysql\bin\mysql -ujelena -pjelena --default_character_set=utf8 < "E:\roll_a_dice.sql"

drop database if exists roll_a_dice;
create database roll_a_dice default character set utf8;
use roll_a_dice;

create table player(
id int not null primary key auto_increment,
firstName varchar(50) not null,
lastName varchar(50) 

);

create table dice(
id int not null primary key auto_increment,
numberOfDice int not null,
player int not null

);

create table rollingDice(
id int not null primary key auto_increment,
numberOfRolling int not null,
score int not null,
player int not null

);

alter table dice add foreign key (player) references player(id);
alter table rollingDice add foreign key (player) references player(id);

insert into player(firstName) values
#1
('Marko'),
#2
('Ivica'),
#3
('Marica');

insert into dice(numberOfDice,player) values (5,1),(5,2),(5,3);
insert into rollingDice(numberOfRolling,score,player) values (3,45,1), (3,60,2),(3,82,3);

update rollingDice set score =rand()*100 where id =2;

delete from dice where id =3;
delete from rollingDice where id =3;
delete from player where id = 3;
