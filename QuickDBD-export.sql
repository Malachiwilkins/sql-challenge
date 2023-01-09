-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/rhjOrB
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE `dept_emp` (
    `emp_no` INT  NOT NULL ,
    `dept_no` VARCHAR  NOT NULL ,
    PRIMARY KEY (
        `emp_no`,`dept_no`
    )
);

CREATE TABLE `employees` (
    `emp_no` INT  NOT NULL ,
    `emp_title_id` VARCHAR  NOT NULL ,
    `brith_date` DATE  NOT NULL ,
    `first_name` VARCHAR  NOT NULL ,
    `last_name` VARCHAR  NOT NULL ,
    `sex` VARCHAR  NOT NULL ,
    `hire_date` DATE  NOT NULL ,
    PRIMARY KEY (
        `emp_no`
    )
);

CREATE TABLE `salaries` (
    `emp_no` INT  NOT NULL ,
    `Salary` INT  NOT NULL ,
    PRIMARY KEY (
        `emp_no`
    )
);

CREATE TABLE `departments` (
    `dept_no` VARCHAR  NOT NULL ,
    `depth_name` VARCHAR  NOT NULL ,
    PRIMARY KEY (
        `dept_no`,`depth_name`
    )
);

CREATE TABLE `titles` (
    `title_id` VARCHAR  NOT NULL ,
    `titles` VARCHAR  NOT NULL ,
    PRIMARY KEY (
        `title_id`
    )
);

ALTER TABLE `dept_emp` ADD CONSTRAINT `fk_dept_emp_emp_no` FOREIGN KEY(`emp_no`)
REFERENCES `employees` (`emp_no`);

ALTER TABLE `dept_emp` ADD CONSTRAINT `fk_dept_emp_dept_no` FOREIGN KEY(`dept_no`)
REFERENCES `departments` (`dept_no`);

ALTER TABLE `employees` ADD CONSTRAINT `fk_employees_emp_no` FOREIGN KEY(`emp_no`)
REFERENCES `salaries` (`emp_no`);

ALTER TABLE `employees` ADD CONSTRAINT `fk_employees_emp_title_id` FOREIGN KEY(`emp_title_id`)
REFERENCES `titles` (`title_id`);

