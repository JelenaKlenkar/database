#c:\xampp\mysql\bin\mysql -ujelena -pjelena --default_character_set=utf8 < "E:\reakcije.sql"

drop database if exists reakcije;
create database reakcije default character set utf8;
use reakcije;

create table kemikalija(
sifra int not null primary key auto_increment,
naziv varchar(70) not null,
gustoća decimal(18,4) not null,
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




