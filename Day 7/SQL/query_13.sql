SELECT 
  AVG(Results.marks) 
FROM 
  Students NATURAL 
  JOIN Results 
GROUP BY 
  student_id, 
  name;
