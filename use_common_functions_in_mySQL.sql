USE quanlysinhvien2;

-- SELECT Address, count(StudentId) as "SL SVien"
-- FROM student
-- group by Address;

-- SELECT S.StudentId, S.StudentName, avg(M.Mark) as "AVG Mark", count(M.StudentId) as "SL Mon"
-- from student S join mark M on S.StudentId = M.StudentId
-- group by M.StudentId;

-- SELECT S.StudentId, S.StudentName, avg(M.Mark) as "AVG Mark", count(M.StudentId) as "SL Mon"
-- from student S join mark M on S.StudentId = M.StudentId
-- group by M.StudentId
-- HAVING avg(M.Mark) > 15;

SELECT student.StudentId, student.StudentName, avg(mark_table.Mark) as "AVG Mark", count(mark_table.StudentId) as "SL Mon"
from student join mark_table on student.StudentId = mark_table.StudentId
group by mark_table.StudentId
HAVING avg(mark_table.Mark) >= ALL (SELECT AVG(mark_table.Mark) FROM mark_table GROUP BY mark_table.StudentId);

-- SELECT avg(mark_table.Mark) FROM mark_table GROUP BY mark_table.StudentId;