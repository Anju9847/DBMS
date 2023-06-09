create database company;
use company;
#tables
create table jobs(job_id varchar(20),job_title varchar(30),min_salary numeric(8,2),max_salary numeric(8,2),primary key(job_id));

create table employee(employee_id varchar(20),first_name varchar(20),last_name varchar(20),email varchar(30),phone_number int,hire_date date,job_id varchar(30),salary int,manager_id varchar(20),department_id varchar(20),primary key(employee_id,job_id,department_id));
create table departments(department_id varchar(20),department_name varchar(20),location_id varchar(20),primary key(department_id,location_id));
create table dependents(dependent_id varchar(20),first_name varchar(20),last_name varchar(20),relationship varchar(20),employee_id varchar(20),primary key(dependent_id,employee_id));

create table region(region_id varchar(20),region_name varchar(20),primary key(region_id));
create table countries(country_id varchar(20),country_name varchar(20),region_id varchar(20),primary key(country_id));
create table locations(location_id varchar(20),street_address varchar(50),postal_code int,city varchar(20),state_province varchar(20),country_id varchar(20),primary key(location_id));

#foreign keys

alter table dependents add foreign key(employee_id) references employee(employee_id);
alter table countries add foreign key(region_id) references region(region_id);
alter table locations add foreign key(country_id) references countries(country_id);
alter table departments add foreign key(location_id) references locations(location_id);
alter table employee add foreign key(department_id) references departments(department_id);

#questions

alter table departments rename to Dept;
alter table employee modify salary smallint;
desc employee;
alter table employee add column commission int;

#value insertion table- region

insert into region values('A1','Europe');
insert into region values('A2','Americas');
insert into region values('A3','Asia');
insert into region values('A4','Middle East & Africa');

#table countries

insert into countries values('AR','Argentina','A1');
insert into countries values('AU','Australia','A2'),('BE','Belgium','A3'),('BR','Brazil','A4');

#table location
insert into locations values(1400,'2014 jabberwocky','26192','southlake','Texas','AR');
insert into locations values(1500,'2019 interiorwork','99236','south san','California','AU');
insert into locations values(1600,'211 interio','936','west san','Belgia','BE');
insert into locations values(2200,'312 rosepark','111','eastera lake','roofan','BR');

#table employee
insert into employee values('AB1','Steven','king','steven@gmail.com',987865432,'21-feb-2003','j12',500000,'M11','Dep111',1000);



