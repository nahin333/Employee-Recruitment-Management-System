set serveroutput on 
declare 
f utl_file.file_type;
line varchar(3000);
admin_id Administration_Info.admin_id%type;
name Administration_Info.name%type;
post Administration_Info.post%type;
salary Administration_Info.salary%type;
begin
f:= utl_file.fopen('ERMS','Administration_Info.csv','r');
if utl_file.is_open(f) then
utl_file.get_line(f,line,1000);
loop begin
utl_file.get_line(f,line,1000);
if line is null then exit;
end if;
admin_id:= regexp_substr(line,'[^,]+',1,1);
name:= regexp_substr(line,'[^,]+',1,2);
post:= regexp_substr(line,'[^,]+',1,3);
salary:= regexp_substr(line,'[^,]+',1,4);
insert into Administration_Info values(admin_id,name,post,salary);
commit;
exception when no_data_found then exit;
end;
end loop;
end if;
--utl_file_fclose(f);
end;

/
