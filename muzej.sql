/*
c:\xampp\mysql\bin\mysql -ujelena -pjelena --default_character_set=utf8 < "E:\muzej.sql"
*/

drop database if exists muzej;
create database muzej default character set utf8;
use muzej;

create table izlozba(
sifra int not null primary key auto_increment,
autor varchar(50) not null,
vrstaizlozbe varchar(100),
organizator varchar(100) not null,
kustos varchar (50) not null,
sponzor varchar(80) not null
);

create table djela(
sifra int not null primary key auto_increment,
autor varchar (50) not null,
naslov varchar (100) not null,
izlozba int not null
);



alter table djela add foreign key (izlozba) references izlozba(sifra);

insert into izlozba(autor,organizator,kustos,sponzor) values 
#1
('Pablo Picasso','udruga mrvica','Ivan Ivić','Kandit d.o.o.'),
#2
('Leonardo da Vinci','udruga umjetnika','Ana Anić','Saponia d.d.');

insert into djela(autor,naslov,izlozba) values ('Pablo Picasso','The poet',1), ('Leonardo da Vinci','Mona Lisa',2);

update djela set autor ='Andy Warhol' where sifra =1;
update djela set naslov ='Shot Marilyns' where sifra =1;
update izlozba set autor = 'Andy Warhol' where sifra =1;

delete from djela where sifra=1;
delete from izlozba where sifra =1;



