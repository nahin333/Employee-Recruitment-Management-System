SET SERVEROUTPUT ON;
DECLARE
	p_id integer;
	total_candidate integer;
	CURSOR candidate IS
		SELECT post_id from Requirement_Info;
FUNCTION candidate_per_post(p IN integer) RETURN integer IS 
	z integer;
	
BEGIN
	select count(candidate_id) into z from Post_Candidate where post_id = p;
	RETURN z;
END;

BEGIN
	OPEN candidate;
	LOOP
	FETCH candidate into p_id;
		total_candidate := candidate_per_post(p_id);
		dbms_output.put_line(p_id ||' ' || total_candidate);
		EXIT WHEN candidate%notfound;
	END LOOP;
	CLOSE candidate;
END;
/
