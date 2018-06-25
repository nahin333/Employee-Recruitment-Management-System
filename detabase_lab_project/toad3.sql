set serveroutput on
declare

male_no integer;
female_no integer;

begin 
select count(gender) into male_no from Candidate_Info where gender = 'M';
select count(gender) into female_no from Candidate_Info where gender = 'F';

if male_no>female_no
then
dbms_output.put_line('The number of male is more');

else
dbms_output.put_line('The number of female is more');
end if;
end;
/