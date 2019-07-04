#c:\xampp\mysql\bin\mysql -ujelena -pjelena --default_character_set=utf8 < "E:\reactions.sql"

drop database if exists reactions;
create database reactions default character set utf8;
use reactions;

create table chemicalCompound(
id int not null primary key auto_increment,
nameOfCompound varchar(70) not null,
density decimal(18,4) not null,
boilingPoint decimal(18,2) not null,
meltingPoint decimal(18,2) not null
);

create table reactant(
id int not null primary key auto_increment,
chemicalCompound int not null,
chemicalReaction int not null
);

create table product(
id int not null primary key auto_increment,
chemicalCompound int not null,
chemicalReaction int not null
);

create table chemicalReaction(
id int not null primary key auto_increment,
nameOfChemicalReaction varchar(70) not null,
typeOfChemicalReaction varchar(80)
);

create table reactionCondition(
id int not null primary key auto_increment,
temperature decimal(18,2) not null,
pressure decimal(18,2) not null,
catalyst boolean not null,
chemicalReaction int not null
);

alter table reactant add foreign key(chemicalCompound) references chemicalCompound(id);
alter table reactant add foreign key(chemicalReaction) references chemicalReaction(id) on delete cascade;
alter table product add foreign key(chemicalCompound) references chemicalCompound(id);
alter table product add foreign key(chemicalReaction) references chemicalReaction(id) on delete cascade;
alter table reactionCondition add foreign key(chemicalReaction) references chemicalReaction(id) on delete cascade;


insert into chemicalCompound(nameOfCompound,density,boilingPoint, meltingPoint) values 
#1
('Ammonium chloride',1.53,520,338),
#2
('Calcium hydroxide',2.21, 2850, 580),
#3
('Ammonia',0.73,-33.34,-77.73),
#4
('Calcium chloride',2.15,1935,772),
#5
('Water',997,100,0),
#6
('Hydrochloric acid',1.17,108.6,-62.2),
#7
('Hydrogen',0.089,-252.9,-259.2)
;

insert into chemicalReaction(nameOfChemicalReaction) values
#1
('Laboratory preparation of Ammonia'),
#2
('Preparation of ammonium chloride')
;

insert into reactant(chemicalCompound,chemicalReaction) values (1,1), (2,1),(6,2),(3,2);
insert into product(chemicalCompound,chemicalReaction) values (3,1),(4,1),(5,1),(1,2);
insert into reactionCondition(temperature,pressure,catalyst,chemicalReaction) values(25,101325,false,1),(25,101325,false,2);

update chemicalCompound set nameOfCompound = 'Nitrogen' where id =6;
update chemicalReaction set nameOfChemicalReaction ='Industrial preparation of ammonia' where id = 2;
update reactant set chemicalCompound =7 where id =3;
update product set chemicalCompound =3  where id=1;

delete from reactant where id = 3 and id = 4;
delete from product where id = 4;
delete from chemicalCompound where id = 6 and id = 7;
delete from reactionCondition where id = 2;
delete from chemicalReaction where id = 2;



