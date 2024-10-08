SELECT 
  Students.department, 
  AVG(Results.marks) 
FROM 
  Students 
  INNER JOIN Results ON Students.student_id = Results.student_id 
  INNER JOIN Courses ON Results.course_id = Courses.course_id 
GROUP BY 
  Students.department;
