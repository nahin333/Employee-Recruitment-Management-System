set serveroutput on;
declare
    cursor c_list is
    select candidate_id from post_candidate where post_id=1307006;
    c_id candidate_info.candidate_id%type;
    vacant_posts requirement_info.vacancies%type;
    c_name candidate_info.name%type;
    ai integer;
    cursor b_list is
    select points from Candidate_Info where candidate_id in(select candidate_id from Post_Candidate where post_id=1307006);
    b_id integer;
    counter integer;
type namearray is varray(5) of Administration_Info.name%type;

a_name namearray := namearray();
counter1 number(1):=0;
    
    
begin

    open b_list;
    open c_list;
    
    select vacancies into vacant_posts from requirement_info where post_id=1307006;
    
    select points into ai from requirement_info where post_id=1307006;

    

    
    dbms_output.put_line('possible candidates to get the job : ');
    
    for counter in 1..4
    loop
    fetch b_list into b_id;
    if b_id>=ai
    then
    loop
    exit when vacant_posts < 1;
    fetch c_list into c_id;
    select name into c_name from candidate_info where candidate_id = c_id;
    
    
    dbms_output.put_line(c_name);
    vacant_posts := vacant_posts - 1;
    end loop;
    else
    dbms_output.put_line(' ');
    end if;
    if c_name>null
    then
    a_name(counter1):=c_name;
    counter1:=counter+1;
    else
    counter1:=counter1;
    end if;
    end loop;
end;

