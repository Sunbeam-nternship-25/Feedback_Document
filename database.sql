create database feedback_system_db;

use feedback_system_db;
    
    
    create table teacher(
	teacher_id int primary key AUTO_INCREMENT,
	first_name varchar(255),
	last_name varchar(255),
	email varchar(255),
	password varchar(255));


    create table student(
	student_id int primary key AUTO_INCREMENT,
	first_name varchar(255),
	last_name varchar(255),
	email varchar(255),
	password varchar(255),
	prn_no int,
	group_id int,
	course_id int );

   create table module(
	module_id int primary key AUTO_INCREMENT,
	module_name varchar(255));

    	create table module_type(
	module_type_id int primary key AUTO_INCREMENT,
	module_type_name varchar(255));

   	create table course_group(
	group_id int primary key AUTO_INCREMENT,
	group_name varchar(255));

    	create table subject(
	subject_id int primary key AUTO_INCREMENT,
	subject_name varchar(255),
	course_id int);


    	create table course(
	course_id int primary key AUTO_INCREMENT,
	course_name varchar(255));

    create table feedback_schedule(
	feedback_schedule_id int primary key AUTO_INCREMENT,
	teacher_id int,
	subject_id int,
	module_id int,
	module_type_id int,
	group_id int,
	course_id int,
	start_time DATETIME,
	end_time   DATETIME );



    create table question(
        question_id int primary key AUTO_INCREMENT,
        q1 int,
        q2 int,
        q3 int,
        q4 int,
        q5 int,
        suggestion text
    );


    create table feedback(
        feedback_id int primary key AUTO_INCREMENT,
        student_id int,
        feedback_schedule_id int,
        question_id int
    );


