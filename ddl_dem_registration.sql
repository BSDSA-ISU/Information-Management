use ddl_dem_registration;


create table registrations (
    registration_id INT NOT NULL,
    student_id int not null,
    course_id int not null,
    registration_date date default (CURRENT_DATE),
    status varchar(20) default 'pending',
    CONSTRAINT PRIMARY KEY (registration_id),
    CONSTRAINT fk_reg_student foreign key (student_id) REFERENCES students(student_id),
    CONStraint fk_reg_course foreign key (course_id) ReFERENCES courses(course_id)
    );



ALTER TABLE students
ADD mobile_no varchar(20);


DESCRIBE students;

ALTER TABLE students
MODIFY mobile_no VARCHAR(67);

DESCRIBE students;

-- rename 
-- alter table student_id
-- change column to_stuff varchar(67);

-- Drop
-- ALTER TABLE student_id
-- DROP column Stuffs;


-- noprimary key table
CREATE TABLE instructors(
    instructor_id int,
    instructor_name varchar(100) not null,
    email varchar(100),
    department VARCHAR(40)
    );

-- add prinary key
alter table instructors
add primary key (instructor_id);

-- add a unique constraint
alter table instructors
add CONSTRAINT uq_instructor_email unique(email);

-- ALTER - remove a unique constainnt
alter table instructors
drop index uq_instructor_email;

-- ALTER
alter table instructors
drop index uq_instructor_email;

-- ALTER - remove primary key 
alter table instructors
drop PRIMARY KEY;

-- add a new column to corsse
alter TABLE courses
add courses_fee decimal(10, 2) DEFAULT 0.00;

--create table sextion
create table sections (
    section_id int PRIMARY key,
    course_id int,
    section_name varchar(20) not null
    );

-- add fk
alter table sections
add constraint fk_section_course
foreign key (course_id) references courses(course_id);

-- remove foren key
alter table sections

drop FOREIGN KEY fk_sections_course;

DESCRIBE sections;

-- renem teble
rename table registrations to enrollments_temp;
DESCRIBE sections;

-- remove all rows but keep structures
TRUNCATE TABLE enrollments_temp
DESCRIBE sections;

CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT NOT NULL,
    subject_name VARCHAR(67) NOT NULL,
    semester VARCHAR(20) DEFAULT '1st_semester',
    school_year VARCHAR(20) NOT NULL,
    CONSTRAINT fk_enrollments_student 
        FOREIGN KEY (student_id) REFERENCES students(student_id)
);

SHOW TABLES;

SHOW tables;