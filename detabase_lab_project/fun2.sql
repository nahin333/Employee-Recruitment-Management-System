
create or replace FUNCTION get_complete_info(in_c_id IN INTEGER) 
   RETURN VARCHAR
   IS candidate_details VARCHAR(500);

   BEGIN 

	  SELECT 'Name-'||cinfo.name||',CGPA '|| cinfo.cgpa||', 
        Post Id-'||pcandidate.post_id||', Candidate Id-'||pcandidate.candidate_id 
      INTO candidate_details
      FROM Candidate_Info cinfo, Post_Candidate pcandidate
      WHERE pcandidate.candidate_id = in_c_id;

      RETURN(candidate_details); 

    END get_complete_info;
/
SET SERVEROUTPUT ON
BEGIN
 dbms_output.put_line(get_complete_info(1507007));
END
/

