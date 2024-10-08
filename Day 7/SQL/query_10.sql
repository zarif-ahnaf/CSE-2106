SELECT 
  Courses.course_name,
  Students.name,
  Results.marks 
FROM 
  Students 
  INNER JOIN Results ON Students.student_id = Results.student_id 
  INNER JOIN Courses ON Results.course_id = Courses.course_id 
WHERE 
  Results.marks = (
    SELECT 
      MAX(R.marks) 
    FROM 
      Results R 
    WHERE 
      R.course_id = Courses.course_id
  );
