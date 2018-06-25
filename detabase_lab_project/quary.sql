 select admin_id,name,post from Administration_Info;
 select count(gender) from Candidate_Info;
 select count(distinct gender)from Candidate_Info;
 
 select gender,avg(cgpa)from Candidate_Info group by gender;
 select gender,avg(cgpa)from Candidate_Info group by gender having avg(cgpa)>3.2;
 select gender,avg(cgpa)from Candidate_Info group by gender having sum(cgpa)>3.2;
 select gender,avg(cgpa)from Candidate_Info group by gender having gender='M';
 select gender,avg(cgpa)from Candidate_Info group by gender having gender= 'F';
 select university,avg(cgpa) from Candidate_Info group by university having university='KUET'; 
 
 select gender,cgpa from Candidate_Info where cgpa >= 3.00 and cgpa <= 3.80;
 
 select C.candidate_id,C.name,A.name,A.admin_id from Candidate_Info C,Administration_Info A;
 select Candidate_Info.candidate_id,Candidate_Info.name,Administration_Info.name,Administration_Info.admin_id from Candidate_Info,Administration_Info;
 select * from Candidate_Info;
 
 select name,candidate_id from Candidate_Info where candidate_id in(select candidate_id from Post_Candidate where post_id=1307001);
 
 select C.name,P.post_id from Candidate_Info C join Post_Candidate P on C.candidate_id=P.candidate_id;
 select C.name,P.post_id from Candidate_Info C join Post_Candidate P using(candidate_id);
 
 select C.name,C.candidate_id,P.post_id from Candidate_Info C join Post_Candidate P on C.candidate_id=P.candidate_id;
 select name ,candidate_id,C.cgpa,P.post_id from Candidate_Info C natural join Post_Candidate P;
 
 select candidate_id ,C.name,P.post_id from Candidate_Info C natural join Post_Candidate P;
 
 select admin_id,A.salary,P.post_id from Administration_Info A natural join Post_Admin P ;
 
 
 commit;