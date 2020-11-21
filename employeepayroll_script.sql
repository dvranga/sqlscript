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

alter table employee_payroll add phone_number varchar(250)
after name;
alter table employee_payroll add address varchar(250)
after phone_number;
alter table employee_payroll add department varchar(250)
not null
after address;

alter table employee_payroll rename column salary to basic_pay;

alter table employee_payroll add deductions double not null after basic_pay;

alter table employee_payroll add taxable_pay double not null after deductions;

alter table employee_payroll add tax double not null after taxable_pay;

alter table employee_payroll add net_pay double not null after tax;









