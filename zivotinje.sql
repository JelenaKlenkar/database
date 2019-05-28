#izvođenje
#ova datoteka se nalazi na E:\
/*
c:\xampp\mysql\bin\mysql -ujelena -pjelena --default_character_set=utf8 < "E:\zivotinje.sql"
*/


drop database if exists zivotinje;
create database zivotinje default character set utf8;
use zivotinje;

create table osoba(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
oib int
);

create table sticenik(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
osoba int not null,
prostor int not null
);

create table prostor(
sifra int not null primary key auto_increment,
brojprostora int not null

);


alter table sticenik add foreign key (osoba) references osoba(sifra);

alter table sticenik add foreign key (prostor) references prostor(sifra);

insert into osoba(ime,prezime) values
#1
('Jelena','Klenkar'), 
#2
('Marko', 'Marković'), 
#3
('Shaquille','O''Neal');



insert into prostor (brojprostora) values 
#1
(20),
#2
(54);

insert into sticenik(ime,osoba,prostor) values('Gricko',1,1),('Mrvica',1,1),('Dodo',3,2),('Podo',2,2),('Kodo',3,1);

update sticenik set ime ='Bubica' where sifra = 3;

delete from sticenik where sifra =3;

