
create database club_management;
use club_management

drop table if exists clubs;

create table clubs 
(	
	club_id int(32) primary key not null auto_increment,
	club_name varchar(50) unique not null,
	club_type varchar(50) default null,
	club_description varchar(150) default null,
	club_logo varchar(50) default null
)

drop table if exists users;
create table users
(
	user_id int(32) primary key not null auto_increment,
	user_name varchar(50) not null,
	user_account varchar(50) unique not null,
	password varchar(50) not null,
	user_tel varchar(50) default null,
	user_email varchar(50) default null,
	user_img varchar(50) default null
)

drop table if exists club_user;
create table club_user
(
	id int(32) primary key auto_increment,
	club_id int(32) foreign key references clubs(club_id)
	user_id int(32) foreign key references users(user_id)
	position int(10) not null 
	create_time datetime default null
)

drop table if exists activities;
create table activities
(
	activity_id int(32) primary key auto_increment,
	activity_name varchar(50) not null,
	activity_description varchar(150) default null,
	club_id int(32) foreign key references clubs(club_id)
	
)

drop table if exists activity_user;
create table activity_user
(
	id int(32) primary key auto_increment,
	activity_id int(32) foreign key references activities(activity_id),
	user_id int(32) foreign key references users(user_id)
)

