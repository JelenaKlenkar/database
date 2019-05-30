/*
c:\xampp\mysql\bin\mysql -ujelena -pjelena --default_character_set=utf8 < "E:\museum.sql"
*/

drop database if exists museum;
create database museum default character set utf8;
use museum;

create table exhibition(
id int not null primary key auto_increment,
author varchar(50) not null,
typeOfExhibition varchar(100),
organisator varchar(100) not null,
curator varchar (50) not null,
sponsor varchar(80) not null
);

create table exhibit(
id int not null primary key auto_increment,
author varchar (50) not null,
nameOfExhibit varchar (100) not null,
exhibition int not null
);



alter table exhibit add foreign key (exhibition) references exhibition(id);

insert into exhibition(author,organisator,curator,sponsor) values 
#1
('Pablo Picasso','Association of art museum curators','Ivan Ivić','Kandit d.o.o.'),
#2
('Leonardo da Vinci','American alliance of museums','Anna Anthman','Saponia d.d.');

insert into exhibit(author,nameOfExhibit,exhibition) values ('Pablo Picasso','The poet',1), ('Leonardo da Vinci','Mona Lisa',2);

update exhibit set author ='Andy Warhol' where id =1;
update exhibit set nameOfExhibit ='Shot Marilyns' where id =1;
update exhibition set author = 'Andy Warhol' where id =1;

delete from exhibit where id=1;
delete from exhibition where id =1;



