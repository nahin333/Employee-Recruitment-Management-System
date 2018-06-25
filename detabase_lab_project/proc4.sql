CREATE OR REPLACE PROCEDURE add_post (
 
  p_qualification Requirement_Info.qualification%TYPE
  ) IS
BEGIN
  select count(qualification) into p_qualifcation from Requirement_Info where qualification='BSc';
  return p_qualification;
END add_post;

SHOW ERRORS

BEGIN
   dbms_output.put_line('Average Salary: ' || p_qualification);
END;


select * from Requirement_Info