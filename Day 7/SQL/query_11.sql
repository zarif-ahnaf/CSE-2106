SELECT 
  Students.name, 
  Courses.course_name, 
  Results.marks 
FROM 
  Students NATURAL 
  JOIN Courses NATURAL 
  JOIN Results;
