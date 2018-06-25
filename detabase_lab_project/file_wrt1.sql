set serveroutput on 
declare 
f utl_file.file_type;
cursor a is select * from Administration_Info;
begin
f:= utl_file.fopen('ERMS','Administration_Info_update.csv','w');
utl_file.put(f,'admin_id'||','||'name'||','||'post'||','||'salary');
utl_file.new_line(f);
for a_record in a
loop
utl_file.put(f,a_record.admin_id||','||a_record.name||','||a_record.post||','||a_record.salary);
utl_file.new_line(f);
end loop;
utl_file.fclose(f);
end;

/
