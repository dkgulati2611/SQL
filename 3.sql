CREATE TABLE DEPARTMENT (
 Department_ID int PRIMARY KEY,
 Name varchar(20) NOT NULL,
 Location_ID INT
);

CREATE TABLE JOB (
 Job_ID int PRIMARY KEY,
 Functions varchar(100)
);

CREATE TABLE EMPLOYEES (
 Employee_ID int,
 Name varchar(255),
 dob date,
 Job_ID int,
 Manager_ID int,
 Hire_Date date,
 Salary int,
 department_ID INT,
 FOREIGN KEY (Job_ID) REFERENCES JOB(Job_ID),
 FOREIGN KEY (Department_ID) REFERENCES department(Department_ID)
);
INSERT INTO DEPARTMENT VALUES (1,'Finance',302);
INSERT INTO DEPARTMENT VALUES (2,'Security',706);
INSERT INTO DEPARTMENT VALUES (3,'Human Resources',890);
INSERT INTO DEPARTMENT VALUES (4,'IT',6509);
INSERT INTO DEPARTMENT VALUES (5,'Electronic Dept',651);
INSERT INTO DEPARTMENT VALUES (6,'Software Dept',471);
INSERT INTO DEPARTMENT VALUES (7,'Hardware Dept',491);
------------------------------------------------------------------------------------
INSERT INTO JOB VALUES(501,'Manager of Department');
INSERT INTO JOB VALUES(502,'Works for Security team');
INSERT INTO JOB VALUES(503,'Works for Human Resources team');
INSERT INTO JOB VALUES(504,'works for IT team');
INSERT INTO JOB VALUES(505,'works for Finance team');
INSERT INTO JOB VALUES(506,'works for Electrical Dept team');
INSERT INTO JOB VALUES(507,'works for Hardware team');
INSERT INTO JOB VALUES(508,'works for Software team');
--------------------------------------------------------------------     
INSERT INTO EMPLOYEES VALUES(1001,'Kartik','1999-03-14',502,801,'2015-03-18',100000,2);
INSERT INTO EMPLOYEES VALUES(1001,'Himanshu','1997-05-16',502,801,'2016-10-10',50000,2);
INSERT INTO EMPLOYEES VALUES(1001,'Rahul','1999-03-26',504,801,'2015-03-05',60000,4);
INSERT INTO EMPLOYEES VALUES(1001,'Raj','1997-09-28',505,801,'2018-10-11',50000,1);
INSERT INTO EMPLOYEES VALUES(1001,'Chetan','1996-11-17',505,801,'2014-05-28',75000,1);
INSERT INTO EMPLOYEES VALUES(1001,'Sahil','1998-07-23',508,801,'2017-12-15',87000,7);
INSERT INTO EMPLOYEES VALUES(1001,'Shiva','1997-12-05',502,801,'2019-10-18',1000,2);
