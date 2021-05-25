DROP DATABASE university;
CREATE DATABASE university;
USE university;
CREATE TABLE faculties
(
    id                INT AUTO_INCREMENT NOT NULL,
    faculty           VARCHAR(255)       NOT NULL,
    faculty_info      VARCHAR(255)       NOT NULL,
    PRIMARY KEY (id)
) DEFAULT CHARACTER SET utf8mb4
  COLLATE `utf8mb4_unicode_ci`
  ENGINE = InnoDB;
CREATE TABLE groups
(
    id                INT AUTO_INCREMENT NOT NULL,
    `group`           VARCHAR(255)       NOT NULL,
    groups_info       VARCHAR(255)       NOT NULL,
    PRIMARY KEY (id)
) DEFAULT CHARACTER SET utf8mb4
  COLLATE `utf8mb4_unicode_ci`
  ENGINE = InnoDB;
CREATE TABLE students
(
    id                INT AUTO_INCREMENT NOT NULL,
    student           VARCHAR(255)       NOT NULL,
    student_info      VARCHAR(255)       NOT NULL,
    PRIMARY KEY (id)
) DEFAULT CHARACTER SET utf8mb4
  COLLATE `utf8mb4_unicode_ci`
  ENGINE = InnoDB;

INSERT INTO students SET student = 'Ivan',  student_info = 'Study';
INSERT INTO students SET student = 'Paul',  student_info = 'Work and study';
INSERT INTO students SET student = 'Sera',  student_info = 'Study';
INSERT INTO students SET student = 'Sarah', student_info = 'Not study';
INSERT INTO students SET student = 'Ivan',  student_info = 'Study';

INSERT INTO students SET student = 'Ivan',  student_info = 'Study';
INSERT INTO students SET student = 'Paul',  student_info = 'Work and study';
INSERT INTO students SET student = 'Sera',  student_info = 'Study';
INSERT INTO students SET student = 'Sarah', student_info = 'Not study';
INSERT INTO students SET student = 'Ivan',  student_info = 'Study';

INSERT INTO students SET student = 'Ivan',  student_info = 'Study';
INSERT INTO students SET student = 'Paul',  student_info = 'Work and study';
INSERT INTO students SET student = 'Sera',  student_info = 'Study';
INSERT INTO students SET student = 'Sarah', student_info = 'Not study';
INSERT INTO students SET student = 'Ivan',  student_info = 'Study';

INSERT INTO students SET student = 'Ivan',  student_info = 'Study';
INSERT INTO students SET student = 'Paul',  student_info = 'Work and study';
INSERT INTO students SET student = 'Sera',  student_info = 'Study';
INSERT INTO students SET student = 'Sarah', student_info = 'Not study';
INSERT INTO students SET student = 'Ivan',  student_info = 'Study';

INSERT INTO students SET student = 'Ivan',  student_info = 'Study';
INSERT INTO students SET student = 'Paul',  student_info = 'Work and study';
INSERT INTO students SET student = 'Sera',  student_info = 'Study';
INSERT INTO students SET student = 'Sarah', student_info = 'Not study';
INSERT INTO students SET student = 'Ivan',  student_info = 'Study';

INSERT INTO students SET student = 'Ivan',  student_info = 'Study';
INSERT INTO students SET student = 'Paul',  student_info = 'Work and study';
INSERT INTO students SET student = 'Sera',  student_info = 'Study';
INSERT INTO students SET student = 'Sarah', student_info = 'Not study';
INSERT INTO students SET student = 'Ivan',  student_info = 'Study';

INSERT INTO students SET student = 'Ivan',  student_info = 'Study';
INSERT INTO students SET student = 'Paul',  student_info = 'Work and study';
INSERT INTO students SET student = 'Sera',  student_info = 'Study';
INSERT INTO students SET student = 'Sarah', student_info = 'Not study';
INSERT INTO students SET student = 'Ivan',  student_info = 'Study';

INSERT INTO students SET student = 'Ivan',  student_info = 'Study';
INSERT INTO students SET student = 'Paul',  student_info = 'Work and study';
INSERT INTO students SET student = 'Sera',  student_info = 'Study';
INSERT INTO students SET student = 'Sarah', student_info = 'Not study';
INSERT INTO students SET student = 'Ivan',  student_info = 'Study';

INSERT INTO students SET student = 'Ivan',  student_info = 'Study';
INSERT INTO students SET student = 'Paul',  student_info = 'Work and study';
INSERT INTO students SET student = 'Sera',  student_info = 'Study';
INSERT INTO students SET student = 'Sarah', student_info = 'Not study';
INSERT INTO students SET student = 'Ivan',  student_info = 'Study';



INSERT INTO groups SET `group` = 'PS-11', groups_info = '';
INSERT INTO groups SET `group` = 'PS-12', groups_info = '';
INSERT INTO groups SET `group` = 'PS-13', groups_info = '';

INSERT INTO groups SET `group` = 'BI-11', groups_info = '';
INSERT INTO groups SET `group` = 'BI-12', groups_info = '';
INSERT INTO groups SET `group` = 'BI-13', groups_info = '';

INSERT INTO groups SET `group` = 'ISA-11', groups_info = '';
INSERT INTO groups SET `group` = 'ISA-12', groups_info = '';
INSERT INTO groups SET `group` = 'ISA-13', groups_info = '';

INSERT INTO faculties SET faculty = 'PS',  faculty_info = '';
INSERT INTO faculties SET faculty = 'BI',  faculty_info = '';
INSERT INTO faculties SET faculty = 'ISA', faculty_info = '';