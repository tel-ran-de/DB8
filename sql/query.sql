select * from Course;

select first_name, last_name, c.title
    from Student as s
    join Course c
    on s.course_id=c.course_id;

select s.last_name
    from Student as s,
         Course as c
    where c.title='Java'
    and s.course_id=c.course_id;

select count(*) from Student;

select count(*) from Course
                where title='Python';

