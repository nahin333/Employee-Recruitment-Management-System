CREATE OR REPLACE PROCEDURE add_post (
  p_id Requirement_Info.post_id%TYPE,
  p_name Requirement_Info.post_name%TYPE,
  p_vacancies Requirement_Info.vacancies%TYPE,
  p_salary Requirement_Info.salary%TYPE,
  p_points REQUIREMENT_INFO.points%TYPE
  ) IS
BEGIN
  INSERT INTO Requirement_Info (post_id,post_name,vacancies,salary,points)
  VALUES (p_id, p_name,p_vacancies,p_salary,p_points);
  COMMIT;
END add_post;
/
SHOW ERRORS

BEGIN
   add_post(1307011,'Production Engineer',1,40000,850);
END;


select * from Requirement_Info