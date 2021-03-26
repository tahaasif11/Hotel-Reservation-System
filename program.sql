show databases
create database task1
use task1

create table payment(pid int primary key,datee varchar(50),typee varchar(50),tot_amount double,net_amount double);

create table room(rid int primary key,statuss varchar(50),charge double,typee varchar(50));

create table reservation(reid int primary key,rttype varchar(50),noofnights int,regdate varchar(50),noofrooms int,rid int, foreign key(rid) references room(rid));

create table guest(gid int primary key,nic varchar(50),gender varchar(50),namee varchar(50),country varchar(50),address varchar(50));

create table invoice(net_amount double,vat double,tax double,total double,datee varchar(50),invoiceid int primary key,pid int ,foreign key(pid) references payment(pid),gid int ,foreign key(gid) references guest(gid));
desc invoice