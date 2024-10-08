SELECT 
  students.NAME, 
  courses.course_name, 
  results.marks 
FROM 
  students 
  INNER JOIN courses ON students.department = courses.department 
  INNER JOIN results ON courses.course_id = results.course_id;
