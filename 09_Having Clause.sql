# Having Clause : Similar to "WHERE" , i.e. applies some condition on rows. Used when we want to apply any condition after grouping.

CREATE DATABASE STUDENTS_PERFORMANCE_03;
USE STUDENTS_PERFORMANCE_03;

CREATE TABLE EXAM_03(
	ROLL_NO INT PRIMARY KEY,
	NAME VARCHAR(50),
    MARKS INT NOT NULL,
    CITY VARCHAR(50)
);

INSERT INTO EXAM_03 VALUES(101,"SOUVIK",77,"ASANSOL");
INSERT INTO EXAM_03 VALUES(102,"VIDHI",98,"KOLKATA");
INSERT INTO EXAM_03 VALUES(103,"RAHUL",79,"ASANSOL");
INSERT INTO EXAM_03 VALUES(104,"AMAN",51,"MUMBAI");
INSERT INTO EXAM_03 VALUES(105,"ABHI",65,"DELHI");
INSERT INTO EXAM_03 VALUES(106,"SID",89,"HYDERABAD");
INSERT INTO EXAM_03 VALUES(107,"HARRY",79,"MUMBAI");

SELECT COUNT(NAME), CITY FROM EXAM_03 GROUP BY CITY HAVING MAX(MARKS) > 70;

# we can't add "WEHERE" clause while using "GROUP BY". That's why we use "HAVING" clause.

