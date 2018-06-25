SET SERVEROUTPUT ON;
CREATE OR REPLACE PROCEDURE getname IS 
   c_id Candidate_Info.candidate_id%type;
    c_name Candidate_Info.name%type;
    c_cgpa Candidate_Info.cgpa%type;
    
BEGIN
    c_id := 1507009;
    SELECT  cgpa,name INTO c_cgpa,c_name
    FROM Candidate_Info
    WHERE candidate_id = c_id;
    DBMS_OUTPUT.PUT_LINE('Candidate cgpa='||c_cgpa||',Candidate name ='||c_name);
END;
/


BEGIN
   getname;
END;
/

DROP PROCEDURE getname; 