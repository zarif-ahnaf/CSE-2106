SELECT 
  students.NAME, 
  students.department, 
  courses.course_name 
FROM 
  students 
  INNER JOIN results ON students.student_id = results.student_id 
  INNER JOIN courses ON results.course_id = courses.course_id 
WHERE 
  NOT students.department = courses.department;
