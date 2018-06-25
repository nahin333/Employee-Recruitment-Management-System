set serveroutput on
declare

type namearray is varray(5) of Administration_Info.name%type;

a_name namearray := namearray();
counter number(2);

begin 
for counter in 1..5
loop
a_name.extend;
select name into a_name(counter) from Administration_Info where admin_id = 1407000 + counter;
end loop;

for counter in 1..a_name.count
loop
dbms_output.put_line('Admin name='||a_name(counter));
end loop;
end;
/

 