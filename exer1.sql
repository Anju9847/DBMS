#create database insurance
use insurance;
#create table person(driver_id int,name varchar(20),address(20));
#create table car(liscence varchar(20),model var(20),year int);
#create table accident(report_no int,date varchar(20),location varchar(20));
#create table owns(driver_id int,liscence varchar(20));
#create table participated(report_no int,liscence varchar(20),driver_id int,damage_amount int);
-- alter table owns add constraint foreign key  owns(driver_id) references person(driver_id);
-- alter table participated add constraint foreign key participated(liscence) references car(liscence);
-- 
-- alter table participated add constraint foreign key participated(report_no) references accident(report_no);
-- alter table car rename to vehicle;
-- alter table  accident change  column report_no  report_numbers int;
-- alter table person add column gender varchar(20);
-- alter table accident drop location;
-- alter table participated modify damage_amount numeric(2,1);