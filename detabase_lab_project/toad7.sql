set serveroutput on
declare
ad_id Administration_Info.admin_id%type;
a_salary Administration_Info.salary%type;
max_salary Administration_Info.salary%type;

begin
select max(salary) into max_salary from Administration_Info;
select admin_id into ad_id from Post_Admin where post_id = 1307004;
select salary into a_salary from Administration_Info where admin_id = ad_id;
if a_salary < max_salary
then
update Administration_Info set salary = max_salary where admin_id = ad_id;
commit;
end if;


end;
/


select * from Administration_Info;