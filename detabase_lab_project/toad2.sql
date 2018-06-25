set serveroutput on
declare
r_vacancies Requirement_Info.vacancies%type;

begin
select vacancies into r_vacancies from Requirement_Info where post_name = 'Accountant';
if r_vacancies>=1
then 
dbms_output.put_line('Number of vacant post:'|| r_vacancies);
else
dbms_output.put_line('Empty');
end if;
end;
/