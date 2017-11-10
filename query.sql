create database restful;

use restful;


use restful;

drop table user;

create table user(
id integer PRIMARY KEY auto_increment ,
user_id text,
password text,
name text,  
age integer
);


-- followtruck
create table user_login(
id integer primary key auto_increment,
user_real_id integer,
token text,
created_at DATETIME default current_timestamp
);


create table users(
id integer auto_increment PRIMARY KEY,
userid VARCHAR(20) UNIQUE NOT NULL,
name text not null, 
password text NOT NULL ,
hpno text,
snsid text,
user_code integer not null 
);

create table board(
id integer auto_increment PRIMARY KEY,
businessid text NOT NULL,
userid text not null, 
writetime text NOT NULL ,
title text,
content text
);


create table menu(
id integer auto_increment PRIMARY KEY,
businessid text NOT NULL,
name text NOT NULL,
price integer NOT NULL,
imgurl text
);

create table business_info(
id integer auto_increment PRIMARY KEY,
businessid VARCHAR(20) UNIQUE NOT NULL,
name text NOT NULL,
context text,
latitude double,
longitude double,
business_state integer NOT NULL
);

create table order_info(
id integer auto_increment PRIMARY KEY,
businessid text NOT NULL,
userid text not null, 
order_text text,
total_price text,
order_time DATETIME default current_timestamp
order_state integer NOT NULL
);
