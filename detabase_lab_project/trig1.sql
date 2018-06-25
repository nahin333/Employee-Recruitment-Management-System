set serveroutput on;
create or replace trigger clc_point 
before insert on candidate_info for each row 

begin 
IF (:new.qualification LIKE 'BSc' OR :new.qualification LIKE 'Bcom' OR :new.qualification LIKE 'BA')   THEN
		:new.points := 480;
		 
	ELSIF (:new.qualification LIKE 'BSc+MSc' OR :new.qualification LIKE 'Bcom+Mcom' OR :new.qualification LIKE 'BA+MA') THEN
		:new.points := 520;
		
    ELSIF (:new.qualification LIKE 'BSc+PhD' or :new.qualification LIKE 'Bcom+PhD' or :new.qualification LIKE 'BA+PhD') THEN
	    :new.points := 550;
	
	ELSE
		:new.points := 600;
	END IF;
	:new.points := (:new.cgpa * 100) + :new.points;
end;
/