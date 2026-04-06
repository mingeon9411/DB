CREATE TABLE department (
    dept_id   VARCHAR2(10),
    dept_name VARCHAR2(20) NOT NULL,
    office    VARCHAR2(20),
    CONSTRAINT pk_department PRIMARY KEY (dept_id)
);

CREATE TABLE student (
    stu_id       VARCHAR2(10),
    resident_id  VARCHAR2(14) NOT NULL,
    name         VARCHAR2(10) NOT NULL,
    year         NUMBER(1),
    address      VARCHAR2(10),
    dept_id      VARCHAR2(10),
    CONSTRAINT pk_student PRIMARY KEY (stu_id),
    CONSTRAINT fk_student FOREIGN KEY (dept_id)
        REFERENCES department(dept_id)
);

CREATE TABLE professor (
    prof_id      VARCHAR2(10),
    resident_id  VARCHAR2(14) NOT NULL,
    name         VARCHAR2(10) NOT NULL,
    dept_id      VARCHAR2(10),
    position     VARCHAR2(10),
    year_emp     NUMBER(4),
    CONSTRAINT pk_professor PRIMARY KEY (prof_id),
    CONSTRAINT fk_professor FOREIGN KEY (dept_id)
        REFERENCES department(dept_id)
);

CREATE TABLE course (
    course_id VARCHAR2(10),
    title     VARCHAR2(20) NOT NULL,
    credit    NUMBER(2),
    CONSTRAINT pk_course PRIMARY KEY (course_id)
);

CREATE TABLE class (
    class_id   VARCHAR2(10),
    course_id  VARCHAR2(10),
    year       NUMBER(4),
    semester   NUMBER(1),
    division   CHAR(1),
    prof_id    VARCHAR2(10),
    classroom  VARCHAR2(9),
    enroll     NUMBER(3),
    CONSTRAINT pk_class PRIMARY KEY (class_id),
    CONSTRAINT fk_class1 FOREIGN KEY (course_id)
        REFERENCES course(course_id),
    CONSTRAINT fk_class2 FOREIGN KEY (prof_id)
        REFERENCES professor(prof_id)
);

CREATE TABLE takes (
    stu_id    VARCHAR2(10),
    class_id  VARCHAR2(10),
    grade     VARCHAR2(5),
    CONSTRAINT pk_takes PRIMARY KEY (stu_id, class_id),
    CONSTRAINT fk_takes1 FOREIGN KEY (stu_id)
        REFERENCES student(stu_id),
    CONSTRAINT fk_takes2 FOREIGN KEY (class_id)
        REFERENCES class(class_id)
);

alter table student 
add age int

alter table student 
drop column age

INSERT INTO department VALUES ('920', '컴퓨터공학과', '201호');
INSERT INTO department VALUES ('923', '산업공학과',   '207호');
INSERT INTO department VALUES ('925', '전자공학과',   '308호');

INSERT INTO student VALUES ('1292001', '900424*1825409', '김광식', 3, '서울', '920');
INSERT INTO student VALUES ('1292002', '900305*1730021', '김정현', 3, '서울', '920');
INSERT INTO student VALUES ('1292003', '891021*2308302', '김현정', 4, '대전', '920');
INSERT INTO student VALUES ('1292301', '890902*2704012', '김현정', 2, '대구', '923');
INSERT INTO student VALUES ('1292303', '910715*1524390', '박광수', 3, '광주', '923');
INSERT INTO student VALUES ('1292305', '921011*1809003', '김우주', 4, '부산', '923');
INSERT INTO student VALUES ('1292501', '900825*1506390', '박철수', 3, '대전', '925');
INSERT INTO student VALUES ('1292502', '911011*1809003', '백태성', 3, '서울', '925');

INSERT INTO professor VALUES ('92001', '590327*1839240', '이태규', '920', '교수',   1997);
INSERT INTO professor VALUES ('92002', '690702*1350026', '고희석', '920', '부교수', 2003);
INSERT INTO professor VALUES ('92301', '741011*2765501', '최성희', '923', '부교수', 2005);
INSERT INTO professor VALUES ('92302', '750728*1102458', '김태석', '923', '교수',   1999);
INSERT INTO professor VALUES ('92501', '620505*1200546', '박철재', '925', '조교수', 2007);
INSERT INTO professor VALUES ('92502', '740101*1830264', '장민석', '925', '부교수', 2005);

INSERT INTO course VALUES ('C101', '전산개론',     3);
INSERT INTO course VALUES ('C102', '자료구조',     3);
INSERT INTO course VALUES ('C103', '데이터베이스', 4);
INSERT INTO course VALUES ('C301', '운영체제',     3);
INSERT INTO course VALUES ('C302', '컴퓨터구조',   3);
INSERT INTO course VALUES ('C303', '이산수학',     4);
INSERT INTO course VALUES ('C304', '객체지향언어', 4);
INSERT INTO course VALUES ('C501', '인공지능',     3);
INSERT INTO course VALUES ('C502', '알고리즘',     2);

INSERT INTO class VALUES ('C101-01', 'C101', 2012, 1, 'A', '92301', '301호', 40);
INSERT INTO class VALUES ('C102-01', 'C102', 2012, 1, 'A', '92001', '209호', 30);
INSERT INTO class VALUES ('C103-01', 'C103', 2012, 1, 'A', '92501', '208호', 30);
INSERT INTO class VALUES ('C103-02', 'C103', 2012, 1, 'B', '92301', '301호', 30);
INSERT INTO class VALUES ('C501-01', 'C501', 2012, 1, 'A', '92501', '103호', 45);
INSERT INTO class VALUES ('C501-02', 'C501', 2012, 1, 'B', '92502', '204호', 25);
INSERT INTO class VALUES ('C301-01', 'C301', 2012, 2, 'A', '92502', '301호', 30);
INSERT INTO class VALUES ('C302-01', 'C302', 2012, 2, 'A', '92501', '209호', 45);
INSERT INTO class VALUES ('C502-01', 'C502', 2012, 2, 'A', '92001', '209호', 30);
INSERT INTO class VALUES ('C502-02', 'C502', 2012, 2, 'B', '92301', '103호', 26);

INSERT INTO takes VALUES ('1292001', 'C101-01', 'B+');
INSERT INTO takes VALUES ('1292001', 'C103-01', 'A+');
INSERT INTO takes VALUES ('1292001', 'C301-01', 'A');
INSERT INTO takes VALUES ('1292002', 'C102-01', 'A');
INSERT INTO takes VALUES ('1292002', 'C103-01', 'B+');
INSERT INTO takes VALUES ('1292002', 'C502-01', 'C+');
INSERT INTO takes VALUES ('1292003', 'C103-02', 'B');
INSERT INTO takes VALUES ('1292003', 'C501-02', 'A+');
INSERT INTO takes VALUES ('1292301', 'C102-01', 'C+');
INSERT INTO takes VALUES ('1292303', 'C102-01', 'C');
INSERT INTO takes VALUES ('1292303', 'C103-02', 'B+');
INSERT INTO takes VALUES ('1292303', 'C501-01', 'A+');

COMMIT;