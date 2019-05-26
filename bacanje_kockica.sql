#c:\xampp\mysql\bin\mysql -ujelena -pjelena --default_character_set=utf8 < "E:\bacanje_kockica.sql"

drop database if exists bacanje_kockica;
create database bacanje_kockica;
use bacanje_kockica;

create table igrac(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) 

);

create table kockica(
sifra int not null primary key auto_increment,
brojkockica int not null,
igrac int not null

);

create table bacanje(
sifra int not null primary key auto_increment,
brojbacanja int not null,
rezultat int not null,
igrac int not null

);

alter table kockica add foreign key (igrac) references igrac(sifra);
alter table bacanje add foreign key (igrac) references igrac(sifra);

insert into igrac(ime) values
#1
('Marko'),
#2
('Ivica'),
#3
('Marica');

insert into kockica(brojkockica,igrac) values (5,1),(5,2),(5,3);
insert into bacanje(brojbacanja,rezultat,igrac) values (3,45,1), (3,60,2),(3,82,3);

update bacanje set rezultat =rand()*100 where sifra =2;

delete from kockica where sifra =3;
delete from bacanje where sifra =3;
delete from igrac where sifra = 3;
