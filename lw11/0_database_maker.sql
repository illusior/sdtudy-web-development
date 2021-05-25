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
    PRIMARY KEY (id)
) DEFAULT CHARACTER SET utf8mb4
  COLLATE `utf8mb4_unicode_ci`
  ENGINE = InnoDB;

CREATE TABLE students
(
    id                INT AUTO_INCREMENT NOT NULL,
    first_name        VARCHAR(255)       NOT NULL,
    last_name         VARCHAR(255)       NOT NULL,
    age               INT                NOT NULL,
    group_id          INT                NOT NULL,
    PRIMARY KEY (id)
) DEFAULT CHARACTER SET utf8mb4
  COLLATE `utf8mb4_unicode_ci`
  ENGINE = InnoDB;

INSERT INTO faculties SET faculty = 'PS';
INSERT INTO faculties SET faculty = 'BI';
INSERT INTO faculties SET faculty = 'ISA';

INSERT INTO groups SET `group` = 'PS-11';
INSERT INTO groups SET `group` = 'PS-12';
INSERT INTO groups SET `group` = 'PS-13';

INSERT INTO groups SET `group` = 'BI-11';
INSERT INTO groups SET `group` = 'BI-12';
INSERT INTO groups SET `group` = 'BI-13';

INSERT INTO groups SET `group` = 'ISA-11';
INSERT INTO groups SET `group` = 'ISA-12';
INSERT INTO groups SET `group` = 'ISA-13';

INSERT INTO students SET first_name = 'Ivan',  last_name = 'Pu', age = 19, group_id = 1;
INSERT INTO students SET first_name = 'Paul',  last_name = 'Xi', age = 20, group_id = 2;
INSERT INTO students SET first_name = 'Sera',  last_name = 'He', age = 18, group_id = 3;
INSERT INTO students SET first_name = 'Sarah', last_name = 'Lo', age = 21, group_id = 4;
INSERT INTO students SET first_name = 'Ivan',  last_name = 'Mi', age = 20, group_id = 5;

INSERT INTO students SET first_name = 'Ivan',  last_name = 'Go', age = 19, group_id = 6;
INSERT INTO students SET first_name = 'Paul',  last_name = 'Mo', age = 20, group_id = 7;
INSERT INTO students SET first_name = 'Sera',  last_name = 'Ro', age = 18, group_id = 8;
INSERT INTO students SET first_name = 'Sarah', last_name = 'Ko', age = 21, group_id = 9;
INSERT INTO students SET first_name = 'Ivan',  last_name = 'So', age = 20, group_id = 1;

INSERT INTO students SET first_name = 'Ivan',  last_name = 'Wo', age = 19, group_id = 2;
INSERT INTO students SET first_name = 'Paul',  last_name = 'To', age = 20, group_id = 3;
INSERT INTO students SET first_name = 'Sera',  last_name = 'Bo', age = 18, group_id = 4;
INSERT INTO students SET first_name = 'Sarah', last_name = 'Ma', age = 21, group_id = 5;
INSERT INTO students SET first_name = 'Ivan',  last_name = 'La', age = 20, group_id = 6;

INSERT INTO students SET first_name = 'Ivan',  last_name = 'Ka', age = 19, group_id = 7;
INSERT INTO students SET first_name = 'Paul',  last_name = 'Ra', age = 20, group_id = 8;
INSERT INTO students SET first_name = 'Sera',  last_name = 'Pa', age = 18, group_id = 9;
INSERT INTO students SET first_name = 'Sarah', last_name = 'Sa', age = 21, group_id = 1;
INSERT INTO students SET first_name = 'Ivan',  last_name = 'Ta', age = 20, group_id = 2;

INSERT INTO students SET first_name = 'Ivan',  last_name = 'Wa', age = 19, group_id = 3;
INSERT INTO students SET first_name = 'Paul',  last_name = 'We', age = 20, group_id = 4;
INSERT INTO students SET first_name = 'Sera',  last_name = 'Ri', age = 18, group_id = 5;
INSERT INTO students SET first_name = 'Sarah', last_name = 'Zx', age = 21, group_id = 6;
INSERT INTO students SET first_name = 'Ivan',  last_name = 'Xe', age = 20, group_id = 7;

INSERT INTO students SET first_name = 'Ivan',  last_name = 'Xa', age = 19, group_id = 8;
INSERT INTO students SET first_name = 'Paul',  last_name = 'Xm', age = 20, group_id = 9;
INSERT INTO students SET first_name = 'Sera',  last_name = 'Jk', age = 18, group_id = 1;
INSERT INTO students SET first_name = 'Sarah', last_name = 'Jo', age = 21, group_id = 2;
INSERT INTO students SET first_name = 'Ivan',  last_name = 'Ja', age = 20, group_id = 3;

INSERT INTO students SET first_name = 'Ivan',  last_name = 'Jm', age = 19, group_id = 4;
INSERT INTO students SET first_name = 'Paul',  last_name = 'Lk', age = 20, group_id = 5;
INSERT INTO students SET first_name = 'Sera',  last_name = 'Lo', age = 18, group_id = 6;
INSERT INTO students SET first_name = 'Sarah', last_name = 'Ao', age = 21, group_id = 7;
INSERT INTO students SET first_name = 'Ivan',  last_name = 'Ab', age = 20, group_id = 8;

INSERT INTO students SET first_name = 'Ivan',  last_name = 'Ge', age = 19, group_id = 9;
INSERT INTO students SET first_name = 'Paul',  last_name = 'Gt', age = 20, group_id = 1;
INSERT INTO students SET first_name = 'Sera',  last_name = 'Gu', age = 18, group_id = 2;
INSERT INTO students SET first_name = 'Sarah', last_name = 'Gr', age = 21, group_id = 3;
INSERT INTO students SET first_name = 'Ivan',  last_name = 'Gd', age = 20, group_id = 4;

INSERT INTO students SET first_name = 'Ivan',  last_name = 'De', age = 19, group_id = 5;
INSERT INTO students SET first_name = 'Paul',  last_name = 'Da', age = 20, group_id = 6;
INSERT INTO students SET first_name = 'Sera',  last_name = 'Dc', age = 18, group_id = 7;
INSERT INTO students SET first_name = 'Sarah', last_name = 'Dv', age = 21, group_id = 8;
INSERT INTO students SET first_name = 'Ivan',  last_name = 'Dn', age = 20, group_id = 9;