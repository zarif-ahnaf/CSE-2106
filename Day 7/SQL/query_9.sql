SELECT 
  Students.name 
from 
  Students 
  LEFT JOIN Results on Students.student_id = Results.student_id 
WHERE 
  Results.student_id IS NULL;
