set serveroutput on
declare
c_name Candidate_Info.name%type;
c_cgpa Candidate_Info.cgpa%type;

begin
select name,cgpa into c_name,c_cgpa from Candidate_Info where candidate_id  = 1507001;
dbms_output.put_line('Candidate Name='||c_name);
dbms_output.put_line('Candidate CGPA='||c_cgpa);
exception 
when others then
dbms_output.put_line('no data found');



greetings ;



end;
/