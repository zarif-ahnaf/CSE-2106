SELECT 
  DISTINCT Students.name 
FROM 
  Students NATURAL 
  JOIN Courses 
where 
  Courses.department = Students.department;
