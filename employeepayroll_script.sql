create database payrole_service;
use payrole_service;
show databases;
create table employee_payroll
(
id INT unsigned not null auto_increment,
name varchar(45) not null,
salary Double not null,
start date not null,
primary key (id)
);

describe employee_payroll;

insert into employee_payroll (name,salary,start) values
('Bill',1000000,'2018-01-03'),
('Mark',2000000,'2019-11-13'),
('Charle',3000000,'2020-05-11');


select * from employee_payroll;

select salary from employee_payroll where name='Bill';

Delete from employee_payroll where name='bill';

insert into employee_payroll (name,salary,start) values
('Bill',1000000,'201-01-03');

alter table employee_payroll add gender char(1) after name;

UPDATE `payrole_service`.`employee_payroll` SET `gender` = 'M' WHERE (`id` = '1');
UPDATE `payrole_service`.`employee_payroll` SET `gender` = 'M' WHERE (`id` = '2');
UPDATE `payrole_service`.`employee_payroll` SET `gender` = 'M' WHERE (`id` = '3');
UPDATE `payrole_service`.`employee_payroll` SET `gender` = 'M' WHERE (`id` = '4');

update `payrole_service`.`employee_payroll` set `gender`='F' where (`id`='2');


select * 
from employee_payroll
where start between cast('2018-01-01' as date) and date(now());

