DROP SCHEMA IF EXISTS school;
CREATE SCHEMA school;
USE school;

CREATE TABLE Course (
  course_id SMALLINT UNSIGNED NOT  NULL AUTO_INCREMENT,
  title VARCHAR(45) NOT NULL,
  description VARCHAR(45) NOT NULL,
  PRIMARY KEY (course_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE Student (
  student_id SMALLINT UNSIGNED NOT  NULL AUTO_INCREMENT,
  first_name VARCHAR(45) NOT NULL,
  last_name VARCHAR(45) NOT NULL,
  course_id SMALLINT UNSIGNED,
  PRIMARY KEY (student_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO Student (student_id, first_name, last_name, course_id)
  VALUES (3, 'Oleg', 'Milov',2),
         (4, 'Mark', 'Tusov',1),
         (5, 'Ivan', 'Pushkin',1),
         (6, 'Tolik', 'Beresa',1),
         (7, 'Vasja', 'Dub',2),
         (8, 'Grisha', 'Novak',3),
         (9, 'Ilja', 'Lenin',NULL),
         (10, 'Petr', 'Perviy',NULL);

INSERT INTO Course ( course_id, title, description)
  VALUES( 1, 'Java', 'Java Basics Programming'),
        ( 2, 'Python', 'Python Basics Programming'),
        ( 3, 'Database', 'DB Basics Programming');

