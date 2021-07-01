create database project;
use project;
CREATE TABLE teacher (
  emp_id INT PRIMARY KEY,
  first_name VARCHAR(40),
  last_name VARCHAR(40),
  birth_day DATE,
  sex VARCHAR(11),
  mobile_number VARCHAR(50),
  emailID VARCHAR(120),
  address VARCHAR(120)
);
INSERT INTO teacher VALUES(100, 'Amit', 'Sharma', '1967-11-12', 'M', 9874645212, 'amit@gmail.com', 'H1, Lawyers Colony');
INSERT INTO teacher VALUES(101, 'Aman', 'Singh', '1968-11-18', 'M', 9844746466, 'aman@gmail.com','H2 Defence Colony' );
INSERT INTO teacher VALUES(102, 'Pragya', 'Singh', '1967-11-18', 'F', 9999999999, 'pragya@gmail.com', 'SRM Agra');
INSERT INTO teacher VALUES(103, 'Deepti', 'Chahar', '1969-11-27', 'F', 8888888888, 'deepti@gmail.com', 'Agra Cantt');
INSERT INTO teacher VALUES(104, 'Krishna', 'Gopal', '1970-11-10', 'M', 1515141456, 'krishna@gmail.com', 'Hathras');
INSERT INTO teacher VALUES(105, 'Rajat', 'Kumar', '1973-11-25', 'M', 7578794898, 'rajat@gmail.com', 'Pitampura,Delhi');
INSERT INTO teacher VALUES(106, 'Shreya', 'kulkarni', '1980-11-14', 'F', 6585749412, 'shreya@gmail.com', 'Sainik Nagar, Agra');
INSERT INTO teacher VALUES(107, 'Manika', 'Goyal', '1990-11-17', 'F', 9587415324, 'manika@gmail.com', 'Pratappura, Agra');
INSERT INTO teacher VALUES(108, 'Prince', 'Sharma', '2000-11-23', 'M', 8587456321, 'prince@gmail.com', 'H3,TW Colony,Shimla');
SELECT *FROM teacher; 

CREATE TABLE branch (
  branch_id INT PRIMARY KEY,
  branch_name VARCHAR(40),
  emp_id INT,
  join_start_date DATE,
  FOREIGN KEY(emp_id) REFERENCES teacher(emp_id) 
);
INSERT INTO branch VALUES(1, 'Hindi',106 , '1998-02-13');
INSERT INTO branch VALUES(2, 'English', 104, '2000-02-13');
INSERT INTO branch VALUES(3, 'Maths', 105, '2005-02-13');
INSERT INTO branch VALUES(4, 'Science', 103, '1990-02-13');
INSERT INTO branch VALUES(5, 'P.E', 101, '1995-02-13');
INSERT INTO branch VALUES(6, 'SocialScience', 100, '1996-02-13');
SELECT * FROM branch;

CREATE TABLE teaches_in (
  emp_id INT,
  school_id INT,
  school_name VARCHAR(40),
  total_students INT,
  PRIMARY KEY(emp_id, school_id),
  FOREIGN KEY(emp_id) REFERENCES teacher(emp_id)  
);

INSERT INTO teaches_in VALUES(100 , 200 , 'UPS Hingot Kheria', 150);
INSERT INTO teaches_in VALUES(101 , 201 , 'UPS kehrai', 200);
INSERT INTO teaches_in VALUES(102 , 202 , 'UPS allahabad', 50);
INSERT INTO teaches_in VALUES(103 , 203 , 'UPS Rampur', 125);

SELECT * FROM teaches_in;

CREATE TABLE salarybook (
  salarybook_id INT,
  emp_id INT,
  present_salary INT,
  start_salary INT,
  Joinig_date DATE,
  PRIMARY KEY(emp_id, salarybook_id),
  FOREIGN KEY(emp_id) REFERENCES teacher(emp_id)  
);
INSERT INTO salarybook VALUES(106106, 106, 90000, 10000, '1998-02-13');
INSERT INTO salarybook VALUES(101104, 104, 80000, 15000, '2000-02-13');
INSERT INTO salarybook VALUES(105105, 105, 75000, 60000, '2005-02-13');
INSERT INTO salarybook VALUES(103103, 103, 100000, 45000, '1990-02-13');
INSERT INTO salarybook VALUES(101101, 101, 200000, 500000, '1995-02-13');
INSERT INTO salarybook VALUES(100100, 100, 850000, 13000, '1996-02-13');
SELECT *FROM salarybook;

CREATE TABLE leave_detail (
  emp_id INT,
  care_leave VARCHAR(40),
  medical_leave VARCHAR(40),
  childcare_leave VARCHAR(40),
  FOREIGN KEY(emp_id) REFERENCES teacher(emp_id)  
);
INSERT INTO leave_detail VALUES(100, '4/15', '33/365', '0/600');
INSERT INTO leave_detail VALUES(101, '6/15', '0/365', '300/600');
INSERT INTO leave_detail VALUES(102, '7/15', '200/365', '100/365');
INSERT INTO leave_detail VALUES(103, '8/15', '100/365', '0/600');
INSERT INTO leave_detail VALUES(104, '9/15', '40/365', '600/600');

SELECT *FROM leave_detail;

CREATE TABLE teacher_family (
  emp_id INT PRIMARY KEY,
  married VARCHAR(40),
  spouse_name VARCHAR(40),
  job_of_spouse VARCHAR(40),
  children INT,
  FOREIGN KEY(emp_id) REFERENCES teacher(emp_id) 
);
INSERT INTO teacher_family VALUES(100,'Y', 'Seema', 'Houesewife', 0 );
INSERT INTO teacher_family VALUES(101, 'N', ' ', ' ', 0 );
INSERT INTO teacher_family VALUES(102, 'Y', 'Rajat', 'Engineer', 2);
INSERT INTO teacher_family VALUES(103, 'Y', 'Ram', 'Doctor', 1);
INSERT INTO teacher_family VALUES(104, 'Y', 'Sunita', 'teacher', 4);
INSERT INTO teacher_family VALUES(105, 'Y', 'Manika', 'CA', 3);
INSERT INTO teacher_family VALUES(106, 'N', ' ', ' ', 0);
INSERT INTO teacher_family VALUES(107, 'Y', 'Aryan', 'Lawyer', 0);
INSERT INTO teacher_family VALUES(108, 'Y', 'Neha', 'Housewife', 4);
SELECT *FROM teacher_family; 
 



