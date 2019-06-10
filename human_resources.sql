#c:\xampp\mysql\bin\mysql -ujelena -pjelena --default_character_set=utf8 < "C:\Users\Jelena\database\human_resources.sql"

drop database if exists human_resources;
create database human_resources default character set utf8;
use human_resources;

create table employee(
id int not null primary key auto_increment,
firstName varchar(50) not null,
lastName varchar(50) not null,
nameOfCompany varchar(100) not null,
nameOfDepartment varchar(100) not null,
jobPositionOfEmployee varchar(100) not null,
superior int not null,
email varchar(100) not null,
phoneNumber int not null,
personalIdentificationNumber int,
jobOffer int not null
);

create table applicant(
id int not null primary key auto_increment,
firstName varchar(50) not null,
lastName varchar(50) not null,
address varchar(50) not null,
phoneNumber int not null,
email varchar(100) not null,
personalIdentificationNumber int,
applicantCv varchar(2083) not null,
motivationalLetter varchar(2083) not null
);


create table jobAd(
id int not null primary key auto_increment,
advertisedDate datetime not null,
closedDate datetime not null
);
create table jobPosition(
id int not null primary key auto_increment,
nameOfJobPosition varchar(100) not null,
jobDescription varchar(300) not null,
jobAd int not null 
);

create table criteria(
id int not null primary key auto_increment,
degreeOfEducation varchar(100) not null,
jobExperience varchar(300) not null,
foreignLanguage varchar(100) not null,
drivingLicense boolean not null,
jobAd int not null
);

create table jobApplication(
id int not null primary key auto_increment,
dateOfReceive datetime not null,
timeOfReceive time not null,
numberOfApplication int not null,
jobPosition int not null,
applicant int not null,
applicantSelection int not null

);

create table testing(
id int not null primary key auto_increment,
typeOfTesting varchar(100) not null,
dateOfTesting datetime  not null,
testingTime int,
resultOfTesting varchar(50) not null, 
jobApplication int not null
);

create table interview(
id int not null primary key auto_increment,
typeOfInterview varchar(50),
dateOfInterview datetime,
jobApplication int not null
);

create table jobOffer(
id int not null primary key auto_increment,
jobposition int not null,
salary decimal(18,2) not null,
startingDate datetime not null,
applicantSelection int not null
);

create table applicantSelection(
id int not null primary key auto_increment,
selectionDate datetime not null,
selected boolean not null
);

alter table employee add foreign key (superior) references employee(id);
alter table criteria add foreign key(jobAd) references jobAd(id);
alter table jobPosition add foreign key(jobAd) references jobAd(id);
alter table jobApplication add foreign key(jobPosition)references jobPosition(id);
alter table jobApplication add foreign key(applicant)references applicant(id);
alter table testing add foreign key(jobApplication)references jobApplication(id);
alter table interview add foreign key(jobApplication)references jobApplication(id);
alter table jobOffer add foreign key(jobPosition)references jobPosition(id);
alter table employee add foreign key(jobOffer) references jobOffer(id); 
alter table jobApplication add foreign key (applicantSelection) references applicantSelection(id);
alter table jobOffer add foreign key (applicantSelection) references applicantSelection(id);

insert into applicant(firstName,lastName,address,phoneNumber,email,applicantCV,motivationalLetter) values
#1
('Gary','White','34 Anywhere Road, Coventry', '091000000', 'gary.w@dayjob.co.uk',
'https://www.dayjob.com/downloads/CV_examples/java_developer_cv_template.pdf', 'https://www.dayjob.com/java-developer-cover-letter-1444'),
#2
('Gaurav','Bhagat','3023 Carson Street, California', '091100000','g.bharat@gmail.com',
'https://resume.naukri.com/java-developer-resume-sample','https://www.jobhero.com/java-developer-cover-letter/'),
#3
('Johnson','Patrick','274 Bleecker Street,New York','091200000','p.johnson@gmail.com',
'https://www.resumeok.com/java-developer-resume-examples/','https://www.thebalancecareers.com/software-developer-cover-letter-example-2060144'),
#4
('Darla','Washington','8901 Meadow Way,New York','091300000','dw@somedomain.com',
'https://www.monster.com/career-advice/article/sample-resume-qa-software-tester-entry-level','https://www.jobhero.com/qa-tester-cover-letter/'),
#5
('Charles','Simpson','3071 Ashcraft Court,California','091400000','c.simpson@hotmail.com',
'https://www.monster.com/career-advice/article/sample-resume-QA-software-tester-midlevel','https://www.jobhero.com/qa-tester-cover-letter/');

insert into jobAd(advertisedDate,closedDate) values
#1
('2019-05-29','2019-06-15'),
#2
('2019-06-05','2019-06-20');

insert into jobPosition(nameOfJobPosition,jobDescription,jobAd) values 
#1
('Java developer','Designing and developing high-volume,low-latency applications for mission-critical systems
and delivering high-availability and performance.Contributing in all phases of the development lifecycle. 
Writing well designed, testable, efficient code.',1),
#2
('Quality assurance tester','Test new and existing features, debug code (units and integration) and report errors and failures,
work collaboratively with the developing team to correct errors and participate in testing for product releases,gathering requirements and
test automation and test methodology ',2);

insert into criteria(degreeOfEducation,jobExperience,foreignLanguage,drivingLicense,jobAd) values
('Bachelor and Master degree in Computer Science, Engineering and similar.', '5 years experience in java development,excellent knowledge of sql','English','false',1),
('Bachelor degree in Computer science,Engineering and similar', 
'2 years experience as QA tester, experience in project tracking software like JIRA,basic knowledge of various programming language(ex.Java,Python)','English','false',2);

insert into applicantSelection(selectionDate,selected) values
#1
('2019-06-25',true),
#2
('2019-06-25',false);

insert into jobOffer(jobPosition,salary,startingdate,applicantSelection) values 
#1
(1,5883.30,'2019-07-01',1),
#2
(2,4333.58,'2019-07-01',1);


insert into jobApplication(dateOfReceive,timeOfReceive,numberOfApplication,jobPosition,applicant,applicantSelection) values
#1
('2019-06-05','18:20:54',1,1,1,1),
#2
('2019-06-01','16:55:23',2,1,2,2),
#3
('2019-06-09','20:35:55',3,1,3,2),
#4
('2019-06-06','15:35:23',4,2,4,1),
#5
('2019-06-15','11:25:12',5,2,5,2)
;

insert into testing(typeOfTesting,dateOfTesting,resultOfTesting,jobApplication) values 
('knowledge test','2019-06-17', 'passed',1),('Knowledge test','2019-06-17','passed',2),('Knowledge test','2019-06-17','failed',3),
('knowledge test','2019-06-20','passed',4),('knowledge test','2019-06-20','failed',5), 
('Psychological test', '2019-06-22','passed',1),('Psychological test','2019-06-22','passed',2),('Psychological test','2019-06-22','passed',3);

insert into interview(typeOfInterview,dateOfInterview,jobapplication) values 
('Entry Interview','2019-06-23',1),('Entry Interview','2019-06-23',2),('Entry Interview','2019-06-23',3),
('Technical Interview','2019-06-24',1),('Technical Interview','2019-06-24',2), ('Technical Interview','2019-06-24',4),('Technical Interview','2019-06-24',5),
('Final Interview','2019-06-25',1);

insert into employee(firstName,lastName,nameOfCompany,nameOfDepartment,jobPositionOfEmployee,superior,email,phoneNumber,jobOffer) values

('Gary','White','Google','Engineering department','java developer',1,'g.white@google.com','099000000',1),
('Darla','Washington','Google','Engineering department','QA tester',1,'d.washington@google.com','099100000',2);






