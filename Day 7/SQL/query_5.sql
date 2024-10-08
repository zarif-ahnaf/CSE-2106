SELECT 
  Students.name, 
  Courses.course_name, 
  Results.marks 
FROM 
  Students 
  LEFT JOIN Results ON Students.student_id = Results.student_id 
  LEFT JOIN Courses ON Courses.course_id = Results.course_id;
