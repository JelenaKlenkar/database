#c:\xampp\mysql\bin\mysql -ujelena -pjelena --default_character_set=utf8 < "E:\reakcije.sql"

drop database if exists reakcije;
create database reakcije default character set utf8;
use reakcije;

create table kemikalija(
sifra int not null primary key auto_increment,
naziv varchar(70) not null,
gustoca decimal(18,4) not null,
temperaturavrelista decimal(18,2) not null,
temperaturatalista decimal(18,2) not null
);

create table reaktant(
sifra int not null primary key auto_increment,
kemikalija int not null,
kemijskareakcija int not null
);

create table produkt(
sifra int not null primary key auto_increment,
kemikalija int not null,
kemijskareakcija int not null
);

create table kemijskareakcija(
sifra int not null primary key auto_increment,
naziv varchar(70) not null,
vrsta varchar(80)
);

create table uvjet(
sifra int null primary key auto_increment,
temperatura decimal(18,2) not null,
tlak decimal(18,2) not null,
katalizator boolean not null,
kemijskareakcija int not null
);

alter table reaktant add foreign key(kemikalija) references kemikalija(sifra);
alter table reaktant add foreign key(kemijskareakcija) references kemijskareakcija(sifra);
alter table produkt add foreign key(kemikalija) references kemikalija(sifra);
alter table produkt add foreign key(kemijskareakcija) references kemijskareakcija(sifra);
alter table uvjet add foreign key(kemijskareakcija) references kemijskareakcija(sifra);


insert into kemikalija(naziv,gustoca, temperaturavrelista,temperaturatalista) values 
#1
('Amonijev klorid',1.53,520,338),
#2
('Kalcijev hidroksid',2.21, 2850, 580),
#3
('Amonijak',0.73,-33.34,-77.73),
#4
('Kalcijev klorid',2.15,1935,772),
#5
('Voda',997,100,0),
#6
('Klorovodična kiselina',1.17,108.6,-62.2),
#7
('Vodik',0.089,-252.9,-259.2)
;

insert into kemijskareakcija(naziv) values
#1
('Laboratorijsko dobivanje amonijaka'),
#2
('Dobivanje amonijeva klorida')
;

insert into reaktant(kemikalija,kemijskareakcija) values (1,1), (2,1),(6,2),(3,2);
insert into produkt(kemikalija,kemijskareakcija) values (3,1),(4,1),(5,1),(1,2);
insert into uvjet(temperatura,tlak,katalizator,kemijskareakcija) values(25,101325,false,1),(25,101325,false,2);

update kemikalija set naziv = 'Dušik' where sifra=6;
update kemijskareakcija set naziv ='Industrijsko dobivanje amonijaka' where sifra = 2;
update reaktant set kemikalija =7 where sifra =3;
update produkt set kemikalija =3  where sifra=1;




