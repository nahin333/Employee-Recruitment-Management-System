CREATE OR REPLACE FUNCTION avg_salary RETURN NUMBER IS
   avg_sal Administration_Info.salary%type;
BEGIN
  SELECT AVG(salary) INTO avg_sal
  FROM Administration_Info;
   RETURN avg_sal;
END;
/

SET SERVEROUTPUT ON
BEGIN
dbms_output.put_line('Average Salary: ' || avg_salary);
END;
/
