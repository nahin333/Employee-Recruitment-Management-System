set serveroutput on
declare
c_name Candidate_Info.name%type;
c_cgpa Candidate_Info.cgpa%type;
counter number(2):=1;


begin
for counter in 1..5
loop 
select name,cgpa into c_name,c_cgpa from Candidate_Info where candidate_id =1507000 + counter;
dbms_output.put_line('Candidate name = '||c_name||', Candidate cgpa='||c_cgpa);
end loop;
end;
/