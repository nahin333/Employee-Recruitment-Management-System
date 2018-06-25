set serveroutput on
declare
a_name Administration_Info.name%type;
a_post Administration_Info.post%type;
counter number(20):=1;

begin
while counter <=5
loop
select name,post into a_name,a_post from Administration_Info where admin_id = 1407000 + counter;
dbms_output.put_line('Admin name='||a_name||', Admin post='||a_post);
counter := counter+1;
end loop;

exception
when others then
dbms_output.put_line('wrong');

end;
/
