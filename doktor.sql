#c:\xampp\mysql\bin\mysql -ujelena -pjelena --default_character_set=utf8 < "E:\doktor.sql"

drop database if exists doktor;
create database doktor default  character set utf8;
use doktor;

create table pacijent(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
brojzdravstveneiskaznice int

);

create table lijecenje(
sifra int not null primary key auto_increment,
bolest varchar(50) not null,
lijekovi varchar(100) not null,
pacijent int not null

);

create table medicinskasestra(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
oib int,
lijecenje int not null

);

alter table lijecenje add foreign key (pacijent) references pacijent(sifra);
alter table medicinskasestra add foreign key (lijecenje) references lijecenje(sifra);

insert into pacijent(ime, prezime) values 
#1
('Mario','Marić'),
#2
('Ana','Anić'),
#3
('Ivica','Ivić');
insert into lijecenje(bolest, lijekovi,pacijent) values 
#1
('gastritis','nolicin',1),
#2
('Konjuktivitis','tobramicin',2),
#3
('Ugrušak u nozi','Varfarin',3)
;

insert into medicinskasestra (ime,prezime,lijecenje) values ('Anica','Dobrić',2),('Maria','Marković',2),('Sara','Sarić',3);

update pacijent set ime ='Olga'  where sifra =2;
update pacijent set prezime ='Olgić' where sifra =2;
update  lijecenje set bolest ='Cistitis' where sifra=2;
update lijecenje set lijekovi='ninur' where sifra=2;
 
delete from medicinskasestra where sifra =3;
delete from lijecenje where sifra =3;
delete from pacijent where sifra =3;
