
#c:\xampp\mysql\bin\mysql -ujelena -pjelena --default_character_set=utf8 < "C:\Users\Jelena\database\human_resources.sql"

drop database if exists human_resources;
create database human_resources default character set utf8;
use human_resources;

create table employee(
id int not null primary key auto_increment,
employee_id int not null,
firstName varchar(50) not null,
lastName varchar(50) not null,
nameOfCompany varchar(100) not null,
nameOfDepartment varchar(100) not null,
jobPositionOfEmployee varchar(100) not null,
superior int not null,
email varchar(100) not null,
phoneNumber int not null,
personalIdentificationNumber int
);

create table applicant(
id int not null primary key auto_increment,
applicant_id int not null,
firstName varchar(50) not null,
lastName varchar(50) not null,
address varchar(50) not null,
phoneNumber int not null,
email varchar(100) not null,
personalIdentificationNumber int,
applicantCv boolean not null,
motivationalLetter boolean not null
);

create table jobposition(
id int not null primary key auto_increment,
jobPosition_id int not null,
nameOfJobPosition varchar(100) not null,
jobDescription varchar(300) not null,
advertisedDate datetime not null,
closedDate datetime not null

);

create table criteria(
id int not null primary key auto_increment,
degreeOfEducation varchar(100) not null,
jobExperience varchar(300) not null,
jobPosition_id int not null
);

create table jobapplication(
id int not null primary key auto_increment,
jobapplication_id int not null,
dateOfReceive datetime not null,
timeOfReceive time not null,
numberOfapplication int not null,
jobPosition_id int not null,
applicant_id int not null,
employee_id int not null

);

create table testing(
id int not null primary key auto_increment,
testing_id int not null,
typeOfTesting varchar(100) not null,
dateOfTesting datetime  not null,
testingTime int,
resultOfTesting boolean not null, 
jobapplication_id int not null
);

create table interview(
id int not null primary key auto_increment,
interview_id int not null,
typeOfInterview varchar(50),
dateOfInterview datetime,
testing_id int not null,
jobapplication_id int not null
);

create table joboffer(
id int not null primary key auto_increment,
jobposition_id int not null,
interview_id int not null

);

alter table employee add foreign key (superior) references employee(id);
alter table criteria add foreign key(jobPosition_id) references jobPosition(id);
alter table jobapplication add foreign key(jobPosition_id)references jobPosition(id);
alter table jobapplication add foreign key(applicant_id)references applicant(id);
alter table jobapplication add foreign key(employee_id)references employee(id);
alter table testing add foreign key(jobapplication_id)references jobapplication(id);
alter table interview add foreign key(jobapplication_id)references jobapplication(id);
alter table interview add foreign key(testing_id)references testing(id);
alter table joboffer add foreign key(jobPosition_id)references jobposition(id);
alter table joboffer add foreign key(interview_id)references interview(id);

