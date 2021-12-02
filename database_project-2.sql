create database project
use project

create table faculty(f_ids int NOT NULL, f_teachername varchar(20) NOT NULL,f_teacherroonno varchar(20) NOT NULL, f_teacherage int NOT NULL check(f_teacherage>18),f_contno varchar(20),salary decimal(15,3),primary key(f_ids))
insert into faculty values(01,'Manan','10',25, '03002132422',40000)
insert into faculty values(02,'Atif','11',26,  '03002132324',45000)
insert into faculty values(03,'Amir','12',26,  '03002133453',50000)
insert into faculty values(04,'Ateeq','13',27, '03002135632',20000)
insert into faculty values(05,'Ali','14',28,   '03002132455',30000)
insert into faculty values(06,'Aslam','15',29, '03002132182',55000)
insert into faculty values(07,'Fakhar','16',30,'03002132342',60000)
insert into faculty values(08,'Moazam','17',30,'03003453452',65000)
insert into faculty values(09,'Hafeez','18',31,'03003454353',70000)
insert into faculty values(10,'Ajmal','19',32, '03002132183',75000)
select *from faculty


create table department(d_id int NOT NULL,name varchar(10) NOT NULL,courses varchar(20) NOT NULL,primary key(d_id),fac_ids int references faculty(f_ids))
insert into department values(21,'CS','42',01)
insert into department values(22,'CS','42',02)
insert into department values(23,'SE','40',03)
insert into department values(24,'IT','41',04)
insert into department values(25,'SE','40',05)
insert into department values(26,'IT','41',06)
insert into department values(27,'CS','42',07)
insert into department values(28,'CS','42',08)
insert into department values(29,'SE','40',09)
insert into department values(30,'IT','41',10)
select *from department

create table teacher(t_id int NOT NULL, t_fname varchar(20) NOT NULL,t_lname varchar(20) NOT NULL, t_address varchar(20) NOT NULL,t_email varchar(20) NOT NULL,primary key(t_id),dep_id int references department(d_id))
insert into teacher values(101,'Muhammad','Rashid','Lahore','mrashid@gmail.com',21)
insert into teacher values(102,'Umair','Khan','Karachi','umairkhan@gmail.com',22)
insert into teacher values(103,'Haneef','Muhammad','Faisalabad','mhaneef@gmail.com',23)
insert into teacher values(104,'Shahid','Afridi','Lahore','shahid@gmail.com',24)
insert into teacher values(105,'Shoaib','Malik','Multan','shoaib@gmail.com',25)
insert into teacher values(106,'Najum','Sathi','Islamabad','najum@gmail.com',26)
insert into teacher values(107,'Muazzam','Ali','Karachi','muazzam@gmail.com',27)
insert into teacher values(108,'Sidra','Saddique','Attack','sidra@gmail.com',28)
insert into teacher values(109,'Muhammad','Ali','Thokar','Muhammad@gmail.com',29)
insert into teacher values(110,'Yasir','Akram','Islamabad','yasirakram@gmail.com',30)
select *from teacher



create table students(s_id int NOT NULL, s_fname varchar(20) NOT NULL,s_lname varchar(20) NOT NULL,s_add varchar(20),s_email varchar(20),s_rollno varchar(20)NOT NULL,primary key(s_id),tea_id int references teacher(t_id))
insert into students values(01,'Ali','Amir','Lahore','Ali@gmail.com','Bcsm-f17-050',101)
insert into students values(02,'Atif','Ali','Karachi','Atif@gmail.com','Bcsm-f17-060',102)
insert into students values(03,'Amir','Ahmad','Lahore','Amir@gmail.com','Bcsm-f17-070',103)
insert into students values(04,'Tahir','Ali','Karachi','Tahir@gmail.com','Bcsm-f17-080',104)
insert into students values(05,'Tariq','Asim','Quetta','Tariq@gmail.com','Bcsm-f17-075',105)
insert into students values(06,'Yasir','Asif','Multan','Yasir@gmail.com','Bcsm-f17-095',106)
insert into students values(07,'Khizar','Hafeez','Karachi','Khizar@gmail.com','Bcsm-f17-052',107)
insert into students values(08,'Akmal','Fakhar','Peshawar','Akmal@gmail.com','Bcsm-f17-053',108)
insert into students values(09,'Amjad','Amir','Islamabad','Amjad@gmail.com','Bcsm-f17-067',109)
insert into students values(10,'Asad','Ajmal','Lahore','Asad@gmail.com','Bcsm-f17-078',110)
select *from students

create table std_marks(std_id int NOT NULL,s_rollno varchar(20) NOT NULL,s_subject varchar(20),s_sgpa decimal(15,3) NOT NULL,s_cgpa decimal(15,3) NOT NULL,primary key(std_id),stu_id int references students(s_id))
insert into std_marks values(01,'Bcsm-f17-050','OOP',3.4,3.2,01)
insert into std_marks values(02,'Bcsm-f17-060','DSA',3.1,3.0,02)
insert into std_marks values(03,'Bcsm-f17-080','CALCULAS',3.2,3.0,03)
insert into std_marks values(04,'Bcsm-f17-071','DISCRETE MATH',3.5,3.44,04)
insert into std_marks values(05,'Bcsm-f17-070','JAVA',2.5,2.89,05)
insert into std_marks values(06,'Bcsm-f17-078','PF',2.6,2.90,06)
insert into std_marks values(07,'Bcsm-f17-067','LINEAR',2.67,3.77,07)
insert into std_marks values(08,'Bcsm-f17-052','C_SKILL',2.8,3.55,08)
insert into std_marks values(09,'Bcsm-f17-050','CA',2.9,3.38,09)
insert into std_marks values(10,'Bcsm-f17-095','MARKETING',3.0,3.70,10)
select *from std_marks

create table std_attendence(s_fname varchar(20) NOT NULL,s_lname varchar(20) NOT NULL,s_roolno varchar(20) NOT NULL,s_subjects varchar(20) NOT NULL UNIQUE,stu_id int references students(s_id))
insert into std_attendence values('Ali','Amar','Bcsm-f17-001','OOP',01)
insert into std_attendence values('Atif','Aslam','Bcsm-f17-011','DSA',02)
insert into std_attendence values('Asif','Ali','Bcsm-f17-031','CALCULAS',03)
insert into std_attendence values('Amjad','Ilyas','Bcsm-f17-061','DISCRETE MATH',04)
insert into std_attendence values('Yasir','Akram','Bcsm-f17-101','JAVA',05)
insert into std_attendence values('Ahmad','Ahsan','Bcsm-f17-301','PF',06)
insert into std_attendence values('Amir','Shahzad','Bcsm-f17-061','LINEAR',07)
insert into std_attendence values('Hafeez','Ikram','Bcsm-f17-071','C_SKILLS',08)
insert into std_attendence values('Asad','Arshad','Bcsm-f17-105','CA',09)
insert into std_attendence values('Khizar','Shoaib','Bcsm-f17-111','MARKETING',10) 
select *from std_attendence

create table voucher(v_id int NOT NULL, v_fname varchar(20) NOT NULL,v_lname varchar(20) NOT NULL, v_roolno varchar(20) NOT NULL,v_firstins int, v_secondins int,primary key(v_id),stu_id int references students(s_id))
insert into voucher values(10001,'Ali','Amar','Bcsm-f17-001',45000,40000,01)
insert into voucher values(10002,'Atif','Aslam','Bcsm-f17-011',40000,38000,02)
insert into voucher values(10003,'Asif','Ali','Bcsm-f17-031',50000,30000,03)
insert into voucher values(10004,'Amjad','Ilyas','Bcsm-f17-061',40000,25000,04)
insert into voucher values(10005,'Yasir','Akram','Bcsm-f17-101',20000,30000,05)
insert into voucher values(10006,'Ahmad','Ahsan','Bcsm-f17-301',25000,45000,06)
insert into voucher values(10007,'Amir','Shahzad','Bcsm-f17-061',30000,35000,07)
insert into voucher values(10008,'Hafeez','Ikram','Bcsm-f17-071',20000,50000,08)
insert into voucher values(10009,'Asad','Arshad','Bcsm-f17-105',50000,70000,09)
insert into voucher values(10010,'Khizar','Shoaib','Bcsm-f17-111',80000,10000,10)
select *from voucher



create table semester(sem_id int NOT NULL, s_subname varchar(20) NOT NULL,s_roonno varchar(20) NOT NULL, s_teachername varchar(20),s_classdate date NOT NULL,primary key(sem_id),stu_id int references students(s_id))
insert into semester values(01,'OOP','10','Muhammad Rashid','01-01-2019',01)
insert into semester values(02,'DSA','11','Umair Khan','02-03-2019',02)
insert into semester values(03,'CALCULAS','12','Haneef Muhammad','04-05-2019',03)
insert into semester values(04,'DISCRETE MATH','13','Shahid Afridi','07-02-2019',04)
insert into semester values(05,'JAVA','14','Shoaib Malik','10-04-2019',05)
insert into semester values(06,'PF','15','Najum Sathi','11-23-2019',06)
insert into semester values(07,'LINEAR','16','Muazzam Ali','11-30-2019',07)
insert into semester values(08,'C_SKILS','17','Sidra Saddique','04-23-2019',08)
insert into semester values(09,'CA','18','Muhammad Ali','10-12-2019',09)
insert into semester values(10,'MARKETING','19','Yasir Akram','11-30-2019',10)
select *from semester

create table section(s_subjects varchar(20) NOT NULL,s_roonno varchar(20)NOT NULL,stu_id int references students(s_id))
insert into section values('OOP','10',01)
insert into section values('DSA','11',02)
insert into section values('CALCULAS','12',03)
insert into section values('DISCRETE MATH','13',04)
insert into section values('JAVA','14',05)
insert into section values('PF','15',06)
insert into section values('LINEAR','16',07)
insert into section values('C_SKILLS','17',08)
insert into section values('CA','18',09)
insert into section values('MARKETING','19',10)
select *from section

create table date_sheet(course_name varchar(20) NOT NULL,section_name varchar(20) NOT NULL,start_time varchar (20) NOT NULL, end_time varchar (20) NOT NULL,exame_date date,std_id int references students(s_id))
insert into date_sheet values('OOP','3B','09:00AM','5:00PM','01-10-2019',01)
insert into date_sheet values('DSA','2A','10:00AM','10:00PM','11-09-2019',02)
insert into date_sheet values('CALCULAS','3B','11:00AM','04:00PM','03-25-2019',03)
insert into date_sheet values('DISCRETE MATH','1B','01:00PM','03:00PM','04-17-2019',04)
insert into date_sheet values('JAVA','4C','10:00AM','12:00PM','07-18-2019',05)
insert into date_sheet values('PF','2C','12:00PM','02:00PM','01-10-2019',06)
insert into date_sheet values('LINEAR','1A','03:00PM','05:00PM','02-02-2019',07)
insert into date_sheet values('C_SKILLS','5S','08:00AM','10:00AM','02-03-2019',08)
insert into date_sheet values('CA','2A','10:00AM','12:00PM','12-02-2019',09)
insert into date_sheet values('MARKETING','4B','12:00PM','02:00PM','12-23-2019',10)
select *from date_sheet

--Retrieve data
select *from faculty

select * from faculty where salary>2000 and salary!=40000


select s_fname from students
where s_fname LIKE '%ir'

select s_fname from students
where s_fname LIKE '_s%'

/*Condition*/
select salary,salary/5000 as incresalary,salary-2000 as desalary,salary*2 as bonussalary, salary+2000
from faculty;

/*arithmetic operation*/
select * from faculty where salary>80000
select * from faculty where salary<80000
select * from faculty where salary=80000
select * from faculty where salary!=80000

/*where clause*/
select * from faculty
where f_teacherage=25;

select * from semester where s_subname='OOP';

/*conjunction operator*/
select * from faculty
where f_teacherage=30 and salary=60000;

select * from faculty
where f_teacherage=30 or salary=70000;

/*aggregate*/
select count(s.s_id)from students s

select avg(s.s_cgpa)from std_marks s

select min(f.f_teacherage)from faculty f

select max(f.f_teacherage)from faculty f

select sum(d.d_id)from department d

/*scalar function */
select upper(s_fname)from students;

select lower(s_lname)from students;

--Joins and its types

/*inner join*/
select  s_id,s_fname,s_lname,s_subject,s_cgpa 
   from students
   INNER JOIN std_marks
   on s_id = std_marks.std_id;

/*left join*/
select  s_id,s_fname,s_lname,s_subject,s_cgpa 
   from students
   LEFT JOIN std_marks
   on s_id = std_marks.std_id;
/*right join*/
select  s_id,s_fname,s_lname,s_subject,s_cgpa 
   from students
   RIGHT JOIN std_marks
   on s_id = std_marks.std_id;

/*full outer join*/
select  s_fname,s_lname, s_subname,s_roonno 
   from students
   FULL JOIN semester
   on s_id = semester.sem_id;


/*cross join*/
select s_fname,s_lname, s_subname,s_roonno
   from students
   Cross join semester
   
/*right outer join*/
select  s_id,s_fname, f_teachername, f_teacherroonno
   from students
   RIGHT OUTER join faculty
   on s_id = faculty.f_ids;

/*left outer join*/
select  s_id,s_fname, f_teachername, f_contno
   from students
   LEFT OUTER join faculty
   on s_id = faculty.f_ids;

/*full outer join*/
select  s_subject,s_cgpa,f_teachername 
   from std_marks
   FULL OUTER join faculty
   on std_id = faculty.f_ids;

--Procedure
--1P
create proc sp_result
as
begin
select  s_id,s_fname,s_lname,s_subject,s_cgpa 
   from students
   INNER JOIN std_marks
   on s_id = std_marks.std_id;
End

sp_result

--2p

create proc spAddstu1
as
begin
insert into students values(11,'Asad','Ajmal','Lahore','Asad@gmail.com','Bcsm-f17-078',110)
End

exec spAddstu1
select *from students


--3p

create proc spmulti2
@Name nvarchar(20),
@stucount int  output
as
begin
select @stucount = count(s_id) from students where s_fname = @Name
end

declare @stutotal int
exec spmulti2 'Ali',  @stutotal output
Print @stutotal

--view

--1v

create view vidisplay2
as
select  s_id,s_fname,s_lname,s_subject,s_cgpa 
   from students
   JOIN std_marks
   on s_id = std_marks.std_id

 select * from vidisplay2

--v2

create view vidisplay3
as
select  s_subject,s_cgpa,f_teachername 
   from std_marks
   join faculty
   on std_id = faculty.f_ids

select * from vidisplay3

--v3

create view vidisplay5
as
select  f_teachername,f_teacherroonno,courses 
   from faculty 
   join department 
     on faculty.f_ids = department.fac_ids

 select * from vidisplay5


select * from faculty
 select *from department

sp_helpte sp_result 


