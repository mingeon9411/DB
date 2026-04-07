SELECT  STU_ID, NAME, YEAR
FROM STUDENT

INSERT INTO STUDENT
VALUES ('1292002', '900305*1730021', '강민건', 3, '서울', '')

SELECT ADDRESS
FROM student

SELECT DISTINCT address
FROM student

SELECT name, 2026-year_emp
FROM professor

SELECT name, stu_id, dept_id
FROM student

SELECT *
FROM department

SELECT student.name, student.stu_id, department.dept_name
FROM student, DEPARTMENT
WHERE student.dept_id = department.dept_id

SELECT * FROM DEPARTMENT

SELECT * FROM student

SELECT * FROM DEPARTMENT, STUDENT

SELECT student.name, student.stu_id, department.dept_name
FROM student, DEPARTMENT
WHERE student.dept_id = department.dept_id

select 	student.stu_id, student.dept_id
from 	student, department
where 	student.dept_id = department.dept_id 
AND student.year = 3 
AND department.dept_name='컴퓨터공학과'

select 	name, stu_id
from 	student
where 	year = 3 or year = 4
order BY name desc, stu_id

SELECT s.name, d.dept_name
FROM student s, department d
WHERE s.dept_id = d.dept_id

SELECT *
FROM STUDENT 
WHERE name = '김광식'

SELECT address
FROM student
WHERE address = '서울'

SELECT s2.name
FROM student s1, student s2
WHERE s1.address = s2.ADDRESS 
AND s1.name = '김광식'

SELECT * FROM student s1, student s2

SELECT name 이름, POSITION 직위, 2012-YEAR_emp 재직연수
FROM professor

