CREATE DATABASE ce832_rspere

USE ce832_rspere


CREATE TABLE IF NOT EXISTS PastTest
(

the_date varchar(20),

module_code varchar(20),

questions varchar(20)

)

DROP TABLE pastTest;

select * from pastTest;

insert into PastTest values ('2014-03-21','CE705','Questions');

insert into PastTest values ('2014-03-25','CE702','Questions');

insert into PastTest values ('2014-03-29','CE839','Questions');

CREATE TABLE IF NOT EXISTS upcomingTests
(
id varchar(20),

the_date varchar(20),

module_code varchar(20),

questions varchar(20)

)
select * from upcomingTests;
DROP TABLE upcomingTests;

DELETE FROM upcomingTests WHERE module_code='CE839';


insert into upcomingTests values ('CE7052014-03-21','2014-03-21','CE705','Questions');

insert into upcomingTests values ('CE7022014-03-25','2014-03-25','CE702','Questions');

insert into upcomingTests values ('CE8822014-12-09','2014-12-09','CE882','Questions');

CREATE TABLE IF NOT EXISTS mcqQuestions
(

id varchar(20),

module_code varchar(10) not null,

new_date varchar(10),

topic varchar(20) not null,

question varchar(200),

optionA varchar(50),

optionB varchar(50),

optionC varchar(50),

optionD varchar(50),

correctAnswer varchar(50)

)
ALTER TABLE mcqQuestions ADD id VARCHAR(20) FIRST;


insert into mcqQuestions values ('CE7052014-03-21','CE705','2014-03-21','Android','In java AD API method paintcomponent takes a parameter that is of type graphics.','Both statements are true','First statements is true','second statements is true;','Both statements are false','first statement is true');

insert into mcqQuestions values ('CE7052014-03-21','CE705','2014-03-21','Android','All methods in an interface are automatically public.','Both statements are true','First statements is true','second statements is true;','Both statements are false','first statement is true');

insert into mcqQuestions values ('CE7052014-03-21','CE705','2014-03-21','Android','Class HashMap relies on a method hashcode that associates keys with an int value.','Both statements are true','First statements is true','second statements is true;','Both statements are false','first statement is false');
insert into mcqQuestions values ('CE7052014-03-21','CE705','2014-03-21','Android','TreeMap is useful for programs that need to traverse a map in order of its keys.','Both statements are true','First statements is true','second statements is true;','Both statements are false','first statement is true');

insert into mcqQuestions values ('CE7022014-03-25','CE702','2014-03-25','C#','Java uses late binding to implement overriding of methods','Both statements are true','First statements is true','second statements is true;','Both statements are false','first statement is true');

insert into mcqQuestions values ('CE7022014-03-25','CE702','2014-03-25','C#','Overloaded methods must have the same name and the same parameter lists','Both statements are true','First statements is true','second statements is true;','Both statements are false','first statement is true');
insert into mcqQuestions values ('CE7022014-03-25','CE702','2014-03-25','C#','A process can have several threads.','Both statements are true','First statements is true','second statements is true;','Both statements are false','first statement is true');

insert into mcqQuestions values ('CE7022014-03-25','CE702','2014-03-25','C#','Each process has an independent address space.','Both statements are true','First statements is true','second statements is true;','Both statements are false','first statement is true');

insert into mcqQuestions values ('CE7022014-03-25','CE702','2014-03-25','C#','A process can have several threads.','Both statements are true','First statements is true','second statements is true;','Both statements are false','first statement is true');

SELECT * FROM mcqQuestions;
DELETE FROM mcqQuestions WHERE topic=' ';

delete from mcqQuestions where topic=' '

SELECT * FROM mcqQuestions WHERE id='CE7052014-03-21';

DROP TABLE mcqQuestions

SELECT * FROM mcqQuestions WHERE module_code='CE832' AND new_date='2014-01-01'


    SELECT * FROM mcqQuestions WHERE id='2014-03-21CE705'


SELECT * FROM mcqQuestions WHERE question LIKE '%Java%';

SELECT * FROM mcqQuestions WHERE correctAnswer LIKE '%true%'; 