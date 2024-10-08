SELECT 
  * 
FROM 
  students 
  LEFT OUTER JOIN results ON students.student_id = results.student_id 
WHERE 
  results.student_id IS NULL;
