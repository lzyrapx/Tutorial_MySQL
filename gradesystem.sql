create database gradesystem;

use gradesystem;

create table student
(
	sid INT(10) primary key,
	sname VARCHAR(20),
	gender enum('male', 'female') NOT NULL
);

create table course
(
	cid INT(10) primary key,
	cname VARCHAR(20) NOT NULL
);

create table mark
(
	mid INT(10) primary key,
	sid INT(10) NOT NULL,
	cid INT(10) NOT NULL,
	score INT(10) NOT NULL,
	CONSTRAINT sid_fk FOREIGN KEY (sid) REFERENCES student(sid),
	CONSTRAINT cid_fk FOREIGN KEY (cid) REFERENCES course(cid)
);

INSERT INTO student (sid, sname, gender)VALUE (1, 'Tom', 'male');

INSERT INTO student (sid, sname, gender)VALUE (2, 'Jack', 'male');

INSERT INTO student (sid, sname, gender)VALUE (3, 'Rose', 'female');

INSERT INTO course (cid, cname)VALUE (1, 'math');

INSERT INTO course (cid, cname)VALUE (2, 'physics');

INSERT INTO course (cid, cname)VALUE (3, 'chemistry');

INSERT INTO mark (mid, sid, cid, score)VALUE (1, 1, 1, 80);

INSERT INTO mark (mid, sid, cid, score)VALUE (2, 2, 1, 85);

INSERT INTO mark (mid, sid, cid, score)VALUE (3, 3, 1, 90);

INSERT INTO mark (mid, sid, cid, score)VALUE (4, 1, 2, 60);

INSERT INTO mark (mid, sid, cid, score)VALUE (5, 2, 2, 90);

INSERT INTO mark (mid, sid, cid, score)VALUE (6, 3, 2, 75);

INSERT INTO mark (mid, sid, cid, score)VALUE (7, 1, 3, 95);

INSERT INTO mark (mid, sid, cid, score)VALUE (8, 2, 3, 75);

INSERT INTO mark (mid, sid, cid, score)VALUE (9, 3, 3, 85);