DROP DATABASE university;
CREATE DATABASE university;
USE university;

CREATE TABLE faculties
(
    id                INT AUTO_INCREMENT NOT NULL,
    faculty           VARCHAR(255)       NOT NULL,
    PRIMARY KEY (id)
) DEFAULT CHARACTER SET utf8mb4
  COLLATE `utf8mb4_unicode_ci`
  ENGINE = InnoDB;

CREATE TABLE groups
(
    id                INT AUTO_INCREMENT NOT NULL,
    `group`           VARCHAR(255)       NOT NULL,
    faculty_id        INT                NOT NULL,
    PRIMARY KEY (id)
) DEFAULT CHARACTER SET utf8mb4
  COLLATE `utf8mb4_unicode_ci`
  ENGINE = InnoDB;

CREATE TABLE students
(
    id                INT AUTO_INCREMENT NOT NULL,
    student           VARCHAR(255)       NOT NULL,
    age               INT                NOT NULL,
    group_id          INT                NOT NULL,
    PRIMARY KEY (id)
) DEFAULT CHARACTER SET utf8mb4
  COLLATE `utf8mb4_unicode_ci`
  ENGINE = InnoDB;

INSERT INTO faculties SET faculty = 'PS';
INSERT INTO faculties SET faculty = 'BI';
INSERT INTO faculties SET faculty = 'ISA';

INSERT INTO groups SET `group` = 'PS-11', faculty_id = 1;
INSERT INTO groups SET `group` = 'PS-12', faculty_id = 1;
INSERT INTO groups SET `group` = 'PS-13', faculty_id = 1;

INSERT INTO groups SET `group` = 'BI-11', faculty_id = 2;
INSERT INTO groups SET `group` = 'BI-12', faculty_id = 2;
INSERT INTO groups SET `group` = 'BI-13', faculty_id = 2;

INSERT INTO groups SET `group` = 'ISA-11', faculty_id = 3;
INSERT INTO groups SET `group` = 'ISA-12', faculty_id = 3;
INSERT INTO groups SET `group` = 'ISA-13', faculty_id = 3;

INSERT INTO students SET student = 'Ivan',  age = 19, group_id = 1;
INSERT INTO students SET student = 'Paul',  age = 20, group_id = 2;
INSERT INTO students SET student = 'Sera',  age = 18, group_id = 3;
INSERT INTO students SET student = 'Sarah', age = 21, group_id = 4;
INSERT INTO students SET student = 'Ivan',  age = 20, group_id = 5;

INSERT INTO students SET student = 'Ivan',  age = 19, group_id = 6;
INSERT INTO students SET student = 'Paul',  age = 20, group_id = 7;
INSERT INTO students SET student = 'Sera',  age = 18, group_id = 8;
INSERT INTO students SET student = 'Sarah', age = 21, group_id = 9;
INSERT INTO students SET student = 'Ivan',  age = 20, group_id = 1;

INSERT INTO students SET student = 'Ivan',  age = 19, group_id = 2;
INSERT INTO students SET student = 'Paul',  age = 20, group_id = 3;
INSERT INTO students SET student = 'Sera',  age = 18, group_id = 4;
INSERT INTO students SET student = 'Sarah', age = 21, group_id = 5;
INSERT INTO students SET student = 'Ivan',  age = 20, group_id = 6;

INSERT INTO students SET student = 'Ivan',  age = 19, group_id = 7;
INSERT INTO students SET student = 'Paul',  age = 20, group_id = 8;
INSERT INTO students SET student = 'Sera',  age = 18, group_id = 9;
INSERT INTO students SET student = 'Sarah', age = 21, group_id = 1;
INSERT INTO students SET student = 'Ivan',  age = 20, group_id = 2;

INSERT INTO students SET student = 'Ivan',  age = 19, group_id = 3;
INSERT INTO students SET student = 'Paul',  age = 20, group_id = 4;
INSERT INTO students SET student = 'Sera',  age = 18, group_id = 5;
INSERT INTO students SET student = 'Sarah', age = 21, group_id = 6;
INSERT INTO students SET student = 'Ivan',  age = 20, group_id = 7;

INSERT INTO students SET student = 'Ivan',  age = 19, group_id = 8;
INSERT INTO students SET student = 'Paul',  age = 20, group_id = 9;
INSERT INTO students SET student = 'Sera',  age = 18, group_id = 1;
INSERT INTO students SET student = 'Sarah', age = 21, group_id = 2;
INSERT INTO students SET student = 'Ivan',  age = 20, group_id = 3;

INSERT INTO students SET student = 'Ivan',  age = 19, group_id = 4;
INSERT INTO students SET student = 'Paul',  age = 20, group_id = 5;
INSERT INTO students SET student = 'Sera',  age = 18, group_id = 6;
INSERT INTO students SET student = 'Sarah', age = 21, group_id = 7;
INSERT INTO students SET student = 'Ivan',  age = 20, group_id = 8;

INSERT INTO students SET student = 'Ivan',  age = 19, group_id = 9;
INSERT INTO students SET student = 'Paul',  age = 20, group_id = 1;
INSERT INTO students SET student = 'Sera',  age = 18, group_id = 2;
INSERT INTO students SET student = 'Sarah', age = 21, group_id = 3;
INSERT INTO students SET student = 'Ivan',  age = 20, group_id = 4;

INSERT INTO students SET student = 'Ivan',  age = 19, group_id = 5;
INSERT INTO students SET student = 'Paul',  age = 20, group_id = 6;
INSERT INTO students SET student = 'Sera',  age = 18, group_id = 7;
INSERT INTO students SET student = 'Sarah', age = 21, group_id = 8;
INSERT INTO students SET student = 'Ivan',  age = 20, group_id = 9;