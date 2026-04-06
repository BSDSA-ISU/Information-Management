-- Step 1:
USE hr;

CREATE TABLE DEPT (
    ID int,
    NAME varchar(25)
    );
    
-- step 2
DESCRIBE DEPT;

-- Step 3
INSERT INTO DEPT (ID, NAME)
VALUES
(1, 'BUSINESS'),
(2, 'Finance'),
(3, 'IT');


-- step 4
CREATE TABLE EMP2 (
    ID int,
    LAST_NAME varchar(25),
    FIRST_NAME varchar(25),
    DEPT_ID int
    );

-- step 5
DESCRIBE EMP2;

-- step 6
ALTER TABLE EMP2
MODIFY LAST_NAME VARCHAR(50);

-- step 7
Describe EMP2;

-- Step 8

CREATE TABLE EMPLOYEES2 (
	employee_id INT (11) ,
	first_name VARCHAR(20),
	last_name VARCHAR(25),
	salary DECIMAL(8, 2),
	department_id INT (11)
    );

-- step 9
DROP TABLE EMP2;

-- step 10
ALTER TABLE EMPLOYEES2
DROP FIRST_NAME;

-- step 11
DESCRIBE EMPLOYEES2;

-- step 11.5()
CREATE TABLE EMP2 (
    ID int,
    LAST_NAME varchar(25),
    FIRST_NAME varchar(25),
    DEPT_ID int
    );

-- step 12(employee_id)
ALTER TABLE EMP2
ADD CONSTRAINT my_emp_id_pk
PRIMARY KEY (ID);


-- step 13(Ignored my_emp_dept_id_fk name)
ALTER TABLE DEPT
ADD CONSTRAINT my_emp_id_pk
PRIMARY KEY (ID);

-- step 14
ALTER TABLE EMP2
ADD CONSTRAINT my_emp_dept_id_fk
FOREIGN KEY (DEPT_ID)
REFERENCES DEPT(ID);

-- step 15(EMP2 is dropped so changed to EMPLPOYEES2)
ALTER TABLE EMP2
ADD COMMISSION DECIMAL(2,2),
ADD CONSTRAINT chk_commission_positive
CHECK (COMMISSION > 0);

-- step 16(again, EMP2 is dropped before)
drop table EMP2;
drop table DEPT;

-- what do you notice?
-- The script executes smoothly and creates the tables as intended. Primary keys and foreign keys are properly set, ensuring data integrity. Columns are modified and added logically, reflecting the desired structure. Constraints enforce valid relationships between tables. Overall, the database behaves consistently and as expected.
