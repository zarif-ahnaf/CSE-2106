SELECT 
  * 
FROM 
  Courses 
  LEFT JOIN Results ON Courses.course_id = Results.course_id 
WHERE 
  Results.student_id IS NULL;
