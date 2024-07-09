INSERT INTO Teacher(TID, Teacher_Name) 
Values 
  (1, "Rakhi Rani Paul"), 
  (2, "Md. Momenul Haque"), 
  (3, "Powlomi Roy"), 
  (4, "Subrata Kumer Paul");
INSERT INTO Project(PID, Project_Name, TID) 
VALUES 
  (
    1, "Student System Management", 2
  ), 
  (2, "Hall Management System", 1), 
  (3, "Alumni Association", 4), 
  (4, "Bangla OCR", 3), 
  (5, "Object Detection", 2), 
  (6, "Blockchain based  license registration", 3),
  (7,"Gait Recognition",1);
INSERT INTO Merit_Student(SID, Name, Batch, CGPA, PID) 
VALUES 
  (1, "Jasim", 17, 3.65, 1), 
  (2, "Fahim", 18, 3.92, 2), 
  (3, "Alo", 17, 3.98, 3), 
  (4, "Tasnim", 16, 3.87, 4), 
  (5, "Rahim", 19, 3.12, 6), 
  (6, "Tusher", 18, 3.45, 7);
