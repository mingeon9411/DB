create table course 
	(
		course_id 	varchar2(10) ,
		title 		varchar2(14) 	not null,
		credit 		int,
		constraint 	pk_course 	primary key(course_id)
	)

	
CREATE TABLE class (
   class_id    varchar2(10),
   course_id   varchar2(10),
   year        int,
   semester    int,
   division    char(1),
   prof_id     varchar2(10),
   classroom   varchar2(9),
   enroll      int,
   CONSTRAINT pk_class  PRIMARY KEY (class_id),
   CONSTRAINT fk_class1 FOREIGN KEY (course_id)
       REFERENCES course(course_id),
   CONSTRAINT fk_class2 FOREIGN KEY (prof_id)
       REFERENCES professor(prof_id)
);

CREATE TABLE takes (
    stu_id    varchar2(10),
    class_id  varchar2(10),
    grade     char(5),
    CONSTRAINT pk_takes PRIMARY KEY (stu_id, class_id),
    CONSTRAINT fk_takes1 FOREIGN KEY (stu_id)
        REFERENCES student(stu_id),
    CONSTRAINT fk_takes2 FOREIGN KEY (class_id)
        REFERENCES class(class_id)
);
