create database addressbookDB;

use addressbookDB;

create table addressbook 
(
id int unsigned not null auto_increment,
first_name varchar(150) not null,
last_name varchar(150) not null,
address varchar(1000) not null,
city varchar(1000) not null,
state varchar(150) not null,
zip int not null,
phone_number bigint not null,
email varchar(50) not null,
primary key (id)
);

describe addressbook;

ALTER TABLE `addressbookdb`.`addressbook` 
CHANGE COLUMN `email` `email` VARCHAR(50) NOT NULL ;

insert into addressbook (first_name,last_name,address,city,state,zip,phone_number,email) 
values ('ranganath','vatti','gorantla','anatapur','andhra_pradesh','515231',7483247032,'devangmranganath@gmail.com');
insert into addressbook (first_name,last_name,address,city,state,zip,phone_number,email) 
values ('harinath','vatti','gorantla','anatapur','andhra_pradesh','515231',7483247033,'devangmranganath@gmail.com');
insert into addressbook (first_name,last_name,address,city,state,zip,phone_number,email) 
values ('srinath','vatti','gorantla','anatapur','andhra_pradesh','515231',7483247034,'devangmranganath@gmail.com');
insert into addressbook (first_name,last_name,address,city,state,zip,phone_number,email) 
values ('chandu','vatti','gorantla','anatapur','andhra_pradesh','515231',7483247035,'devangmranganath@gmail.com');
insert into addressbook (first_name,last_name,address,city,state,zip,phone_number,email) 
values ('revathi','vatti','gorantla','anatapur','andhra_pradesh','515231',7483247036,'devangmranganath@gmail.com');

UPDATE `addressbookdb`.`addressbook` SET `phone_number` = '6309609657' WHERE 'id'='2';
UPDATE `addressbookdb`.`addressbook` SET `phone_number` = '7093446244' WHERE (`first_name` = 'chandu');
update `addressbookdb`.`addressbook` set `city`='anatapur' where `first_name`='ranganath';

delete from `addressbookdb`.`addressbook` where `first_name`='revathi';
DELETE FROM `addressbookdb`.`addressbook` WHERE (`id` = '3');

select * from addressbook where city='Anatapur' or state='Andhra_pradesh';

select count(city) from addressbook;
select count(city),state from addressbook group by state;

select first_name
from addressbook
where city='Anatapur'
order by first_name asc;

