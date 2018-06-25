SET SERVEROUTPUT ON;
DECLARE
    c_id Candidate_Info.candidate_id%type;
	c_cgpa Candidate_Info.cgpa%type;
	c_qualification Candidate_Info.qualification%type;
	c_points Candidate_Info.points%type;
	
	CURSOR candidate IS
		SELECT candidate_id,qualification,cgpa from Candidate_Info;
PROCEDURE calculatePoints (q IN Candidate_Info.qualification%type,c IN number, p OUT integer) IS

BEGIN
	IF (q LIKE 'BSc' OR q LIKE 'Bcom' OR q LIKE 'BA')   THEN
		p := 480;
		 
	ELSIF (q LIKE 'BSc+MSc' OR q LIKE 'Bcom+Mcom' OR q LIKE 'BA+MA') THEN
		p := 520;
		
    ELSIF (q LIKE 'BSc+PhD' or q LIKE 'Bcom+PhD' or q LIKE 'BA+PhD') THEN
	    p := 550;
	
	ELSE
		p := 600;
	END IF;
	p := (c * 100) + p;
END;

BEGIN
	OPEN candidate;
	LOOP
	FETCH candidate into c_id,c_qualification,c_cgpa;
	
		calculatePoints(c_qualification,c_cgpa,c_points);
		
		update Candidate_Info set points=c_points where candidate_id=c_id;
		EXIT WHEN candidate%notfound;
	END LOOP;
	CLOSE candidate;
END;
/

select * from Candidate_Info;

select * from Candidate_Info where candidate_id in(select candidate_id from Post_Candidate where post_id=1307006) order by points desc;