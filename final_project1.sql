create database finalpro1
use finalpro1

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

create table department(d_id int NOT NULL,name varchar(10) NOT NULL,courses varchar(20) NOT NULL,primary key(d_id),fac_id int references faculty(f_ids))
insert into department values(01,'CS','42')
insert into department values(02,'CS','42')
insert into department values(03,'SE','40')
insert into department values(04,'IT','41')
insert into department values(05,'SE','40')
insert into department values(06,'IT','41')
insert into department values(07,'CS','42')
insert into department values(08,'CS','42')
insert into department values(09,'SE','40')
insert into department values(10,'IT','41')
select *from department


create table students(s_id int NOT NULL, s_fname varchar(20) NOT NULL,s_lname varchar(20) NOT NULL,s_add varchar(20),s_email varchar(20),s_rollno varchar(20)NOT NULL,primary key(s_id))
insert into students values(01,'Ali','Amir','Lahore','Ali@gmail.com','Bcsm-f17-050')
insert into students values(02,'Atif','Ali','Karachi','Atif@gmail.com','Bcsm-f17-060')
insert into students values(03,'Amir','Ahmad','Lahore','Amir@gmail.com','Bcsm-f17-070')
insert into students values(04,'Tahir','Ali','Karachi','Tahir@gmail.com','Bcsm-f17-080')
insert into students values(05,'Tariq','Asim','Quetta','Tariq@gmail.com','Bcsm-f17-075')
insert into students values(06,'Yasir','Asif','Multan','Yasir@gmail.com','Bcsm-f17-095')
insert into students values(07,'Khizar','Hafeez','Karachi','Khizar@gmail.com','Bcsm-f17-052')
insert into students values(08,'Akmal','Fakhar','Peshawar','Akmal@gmail.com','Bcsm-f17-053')
insert into students values(09,'Amjad','Amir','Islamabad','Amjad@gmail.com','Bcsm-f17-067')
insert into students values(10,'Asad','Ajmal','Lahore','Asad@gmail.com','Bcsm-f17-078')
select *from students

create table std_marks(std_id int NOT NULL,s_rollno varchar(20) NOT NULL,s_subject varchar(20),s_sgpa decimal(15,3) NOT NULL,s_cgpa decimal(15,3) NOT NULL,primary key(std_id))
insert into std_marks values(01,'Bcsm-f17-050','OOP',3.4,3.2)
insert into std_marks values(02,'Bcsm-f17-060','DSA',3.1,3.0)
insert into std_marks values(03,'Bcsm-f17-080','CALCULAS',3.2,3.0)
insert into std_marks values(04,'Bcsm-f17-071','DISCRETE MATH',3.5,3.44)
insert into std_marks values(05,'Bcsm-f17-070','JAVA',2.5,2.89)
insert into std_marks values(06,'Bcsm-f17-078','PF',2.6,2.90)
insert into std_marks values(07,'Bcsm-f17-067','LINEAR',2.67,3.77)
insert into std_marks values(08,'Bcsm-f17-052','C_SKILL',2.8,3.55)
insert into std_marks values(09,'Bcsm-f17-050','CA',2.9,3.38)
insert into std_marks values(10,'Bcsm-f17-095','MARKETING',3.0,3.70)
select *from std_marks

create table std_attendence(s_fname varchar(20) NOT NULL,s_lname varchar(20) NOT NULL,s_roolno varchar(20) NOT NULL,s_subjects varchar(20) NOT NULL UNIQUE)
insert into std_attendence values('Ali','Amar','Bcsm-f17-001','OOP')
insert into std_attendence values('Atif','Aslam','Bcsm-f17-011','DSA')
insert into std_attendence values('Asif','Ali','Bcsm-f17-031','CALCULAS')
insert into std_attendence values('Amjad','Ilyas','Bcsm-f17-061','DISCRETE MATH')
insert into std_attendence values('Yasir','Akram','Bcsm-f17-101','JAVA')
insert into std_attendence values('Ahmad','Ahsan','Bcsm-f17-301','PF')
insert into std_attendence values('Amir','Shahzad','Bcsm-f17-061','LINEAR')
insert into std_attendence values('Hafeez','Ikram','Bcsm-f17-071','C_SKILLS')
insert into std_attendence values('Asad','Arshad','Bcsm-f17-105','CA')
insert into std_attendence values('Khizar','Shoaib','Bcsm-f17-111','MARKETING') 
select *from std_attendence

create table teacher(t_id int NOT NULL, t_fname varchar(20) NOT NULL,t_lname varchar(20) NOT NULL, t_address varchar(20) NOT NULL,t_email varchar(20) NOT NULL,primary key(t_id))
insert into teacher values(101,'Muhammad','Rashid','Lahore','mrashid@gmail.com')
insert into teacher values(102,'Umair','Khan','Karachi','umairkhan@gmail.com')
insert into teacher values(103,'Haneef','Muhammad','Faisalabad','mhaneef@gmail.com')
insert into teacher values(104,'Shahid','Afridi','Lahore','shahid@gmail.com')
insert into teacher values(105,'Shoaib','Malik','Multan','shoaibmalik@gmail.com')
insert into teacher values(106,'Najum','Sathi','Islamabad','najum@gmail.com')
insert into teacher values(107,'Muazzam','Ali','Karachi','muazzam@gmail.com')
insert into teacher values(108,'Sidra','Saddique','Attack','sidra@gmail.com')
insert into teacher values(109,'Muhammad','Ali','Thokar','Muhammad@gmail.com')
insert into teacher values(110,'Yasir','Akram','Islamabad','yasirakram@gmail.com')
select *from teacher

create table voucher(v_id int NOT NULL, v_fname varchar(20) NOT NULL,v_lname varchar(20) NOT NULL, v_roolno varchar(20) NOT NULL,v_firstins int, v_secondins int,primary key(v_id))
insert into voucher values(10001,'Ali','Amar','Bcsm-f17-001',45000,40000)
insert into voucher values(10001,'Atif','Aslam','Bcsm-f17-011',40000,38000)
insert into voucher values(10001,'Asif','Ali','Bcsm-f17-031',50000,30000)
insert into voucher values(10001,'Amjad','Ilyas','Bcsm-f17-061',40000,25000)
insert into voucher values(10001,'Yasir','Akram','Bcsm-f17-101',20000,30000)
insert into voucher values(10001,'Ahmad','Ahsan','Bcsm-f17-301',25000,45000)
insert into voucher values(10001,'Amir','Shahzad','Bcsm-f17-061',30000,35000)
insert into voucher values(10001,'Hafeez','Ikram','Bcsm-f17-071',20000,50000)
insert into voucher values(10001,'Asad','Arshad','Bcsm-f17-105',50000,70000)
insert into voucher values(10001,'Khizar','Shoaib','Bcsm-f17-111',80000,10000)
select *from voucher

create table semester(sem_id int NOT NULL, s_subname varchar(20) NOT NULL,s_roonno varchar(20) NOT NULL, s_teachername varchar(20),s_classdate date NOT NULL,primary key(sem_id))
insert into semester values(01,'OOP','10','Muhammad Rashid','01-01-2019')
insert into semester values(02,'DSA','11','Umair Khan','02-03-2019')
insert into semester values(03,'CALCULAS','12','Haneef Muhammad','04-05-2019')
insert into semester values(04,'DISCRETE MATH','13','Shahid Afridi','07-02-2019')
insert into semester values(05,'JAVA','14','Shoaib Malik','10-04-2019')
insert into semester values(06,'PF','15','Najum Sathi','23-01-2019')
insert into semester values(07,'LINEAR','16','Muazzam Ali','11-02-2019')
insert into semester values(08,'C_SKILS','17','Sidra Saddique','23-04-2019')
insert into semester values(09,'CA','18','Muhammad Ali','12-10-2019')
insert into semester values(10,'MARKETING','19','Yasir Akram','30-11-2019')
select *from semester

create table section(s_ids int NOT NULL, s_subjects varchar(20) NOT NULL,s_roonno varchar(20)NOT NULL)
insert into section values(01,'OOP','10')
insert into section values(02,'DSA','11')
insert into section values(03,'CALCULAS','12')
insert into section values(04,'DISCRETE MATH','13')
insert into section values(05,'JAVA','14')
insert into section values(06,'PF','15')
insert into section values(07,'LINEAR','16')
insert into section values(08,'C_SKILLS','17')
insert into section values(09,'CA','18')
insert into section values(10,'MARKETING','	19')
select *from section

create table date_sheet(course_name varchar(20) NOT NULL,section_name varchar(20) NOT NULL,start_time DATE NOT NULL, end_time DATE NOT NULL,exame_date date) 
insert into date_sheet values('OOP','3B','09:00AM','5:00PM','01-010-2019')
insert into date_sheet values('DSA','2A','10:00AM','10:00PM','11-09-2019')
insert into date_sheet values('CALCULAS','3B','11:00AM','04:00PM','15-03-2019')
insert into date_sheet values('DISCRETE MATH','1B','01:00PM','03:00PM','17-04-2019')
insert into date_sheet values('JAVA','4C','10:00AM','12:00PM','18-07-2019')
insert into date_sheet values('PF','2C','12:00PM','02:00PM','10-01-2019')
insert into date_sheet values('LINEAR','1A','03:00PM','05:00PM','02-02-2019')
insert into date_sheet values('C_SKILLS','5S','08:00AM','10:00AM','02-03-2019')
insert into date_sheet values('CA','2A','10:00AM','12:00PM','12-02-2019')
insert into date_sheet values('MARKETING','4B','12:00PM','02:00PM','12-02-2019')
select *from date_sheet

--Retrieve data
select *from faculty

select * from faculty where salary>2000 and salary!=40000


select s_fname from students
where s_fname LIKE '%ir_'

select s_fname from students
where s_fname LIKE '_a%'

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

/*natural join*/
select  s_subject,s_cgpa,f_teachername 
   from std_marks
   NATURAL join faculty
   on std_id = faculty.f_ids;
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

alter proc sp_addstu
as
begin
insert into students values(11,'Alina','Ajmal','Lahore','Alina@facebook.com','Bcsm-f17-255')

End

exec sp_addstu
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

create view vidisplay4
select  s_fname,s_lname,f_teachername,course_name,section_name,exame_date
   from students
   join teacher,date_sheet
   on s_id = std_marks.std_id

 select * from vidisplay4

--v3

create view vidisplay4
as
select  s_fname,f_teachername 
   from teacher
   join students
     on s_id = teacher.t_id
 select * from vidisplay4


sp_helpte sp_result 


