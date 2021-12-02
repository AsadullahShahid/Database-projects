create database normaliz
use normaliz
/*not null is used and unique is used*/
create table Student(
s_id int NOT NULL unique,
s_name varchar(10) NOT NULL,
s_fathername varchar(10) NOT NULL,
s_courses varchar(10) NOT NULL,
s_age int NOT NULL,
/*use default*/
s_fee decimal(18,2) default 5000.100,
Primary key (s_id)

); 
select * from Student

INSERT INTO STUDENTS VALUES(2,'Ali','18','Aligmail.com','dwicwje',20000.00);
INSERT INTO STUDENTS VALUES(3,'Ahmad','22','Ahmad@gmail.com','dfghj',50000.00);
INSERT INTO STUDENTS VALUES(4,'Atif','29','Atif@gmail.com','dfghj',3000.00);
INSERT INTO STUDENTS VALUES(5,'Amir','25','Amir@gmail.com','dfghj',5000.00);

/*foreign key is used */
CREATE TABLE GRADES( ID INT NOT NULL, STUDENT_ID INT references STUDENTS(ID), MARKS INT NOT NULL, GPA CHAR (5) NOT NULL, PRIMARY KEY (ID) );
INSERT INTO GRADES VALUES(7,08,'1.0'); INSERT INTO GRADES VALUES(2,2,77,'2.8'); 
INSERT INTO GRADES VALUES(3,3,99,'3.8');
INSERT INTO GRADES VALUES(4,4,56,'2.2');
INSERT INTO GRADES VALUES(5,5,33,'1.6');
SELECT * FROM GRADES;
