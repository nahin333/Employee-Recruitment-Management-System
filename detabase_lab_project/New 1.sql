set serveroutput on;
declare
    cursor c_list is
        select candidate_id from candidate_info where qualification = 'BA' or qualification = 'BA+MA' or qualification = 'BA+MA+PhD' and subject = 'Law' order by points desc;
    c_id candidate_info.candidate_id%type;
    vacant_posts requirement_info.vacancies%type;
    c_name candidate_info.name%type;
begin
    open c_list;
    select vacancies into vacant_posts from requirement_info where post_name = 'Lawyer';
    dbms_output.put_line('possible candidates to get the job : ');
    loop
    exit when vacant_posts < 1;
    fetch c_list into c_id;
    select name into c_name from candidate_info where candidate_id = c_id;
    dbms_output.put_line(c_name);
    vacant_posts := vacant_posts - 1;
    end loop;

end;
/
