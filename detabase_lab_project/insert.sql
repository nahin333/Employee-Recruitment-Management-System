 insert into Candidate_Info (candidate_id,name,gender,university,subject,cgpa,qualification) values (1507001,'James','M','KUET','EEE',3.80,'BSc+MSc');
 insert into Candidate_Info (candidate_id,name,gender,university,subject,cgpa,qualification) values (1507002,'John','M','KUET','CSE',3.70,'BSc+MSc+PhD');
 insert into Candidate_Info (candidate_id,name,gender,university,subject,cgpa,qualification) values (1507003,'Jennifer','F','DU','Law',3.65,'BA');
 insert into Candidate_Info (candidate_id,name,gender,university,subject,cgpa,qualification) values (1507004,'Michael','M','KUET','ME',3.75,'BSc');
 insert into Candidate_Info (candidate_id,name,gender,university,subject,cgpa,qualification) values (1507005,'Elizabeth','F','DU','Accounting',3.75,'Bcom');
 insert into Candidate_Info (candidate_id,name,gender,university,subject,cgpa,qualification) values (1507006,'Christopher','M','KUET','CE',3.55,'BSc');
 insert into Candidate_Info (candidate_id,name,gender,university,subject,cgpa,qualification) values (1507007,'Daniel','M','RU','Finance',3.66,'Bcom+Mcom');
 insert into Candidate_Info (candidate_id,name,gender,university,subject,cgpa,qualification) values (1507008,'Matthew','M','RU','Management',3.61,'Bcom');
 insert into Candidate_Info (candidate_id,name,gender,university,subject,cgpa,qualification) values (1507009,'Anthony','M','CUET','CE',3.60,'BSc+PhD');
 insert into Candidate_Info (candidate_id,name,gender,university,subject,cgpa,qualification) values (1507010,'Linda','F','CU','Marketing',3.60,'Bcom');
 insert into Candidate_Info (candidate_id,name,gender,university,subject,cgpa,qualification) values (1507011,'Jerry','M','CU','Marketing',3.62,'Bcom+Mcom');
 insert into Candidate_Info (candidate_id,name,gender,university,subject,cgpa,qualification) values (1507012,'Tyler','M','CUET','EEE',3.52,'BSc');
 insert into Candidate_Info (candidate_id,name,gender,university,subject,cgpa,qualification) values (1507013,'Aaron','M','KUET','CSE',3.66,'BSc+MSc');
 insert into Candidate_Info (candidate_id,name,gender,university,subject,cgpa,qualification) values (1507014,'Henry','M','CUET','EEE',3.74,'BSc+MSc+PhD');
 insert into Candidate_Info (candidate_id,name,gender,university,subject,cgpa,qualification) values (1507015,'Jordan','M','CUET','EEE',3.70,'BSc+MSc+PhD');
 insert into Candidate_Info (candidate_id,name,gender,university,subject,cgpa,qualification) values (1507016,'Doris','F','DU','Law',3.60,'BA+MA');
 
 
 
 
 
 
 
 
 
 
 
 insert into Administration_Info(admin_id,name,post,salary) values (1407001,'David','Consultant',85000);
 insert into Administration_Info(admin_id,name,post,salary) values (1407002,'Richard','CEO',90000);
 insert into Administration_Info(admin_id,name,post,salary) values (1407003,'Joseph','CTO',88000);
 insert into Administration_Info(admin_id,name,post,salary) values (1407004,'Thomas','CFO',87000);
 insert into Administration_Info(admin_id,name,post,salary) values (1407005,'Charles','COO',86000);
 insert into Administration_Info(admin_id,name,post,salary) values (1407006,'Mark','Operations Manager',75000);
 insert into Administration_Info(admin_id,name,post,salary) values (1407007,'Eric','Quality Control Manager',70000);
 insert into Administration_Info(admin_id,name,post,salary) values (1407008,'Emily','Office Manager',60000);
 insert into Administration_Info(admin_id,name,post,salary) values (1407009,'Paul','Marketing Manager',65000);
 insert into Administration_Info(admin_id,name,post,salary) values (1407010,'Steven','Accountant Controller',68000);
 
 
 
 
 insert into Requirement_Info(post_id,post_name,vacancies,salary,points) values (1307001,'Accountant',1,25000,850);
 insert into Requirement_Info(post_id,post_name,vacancies,salary,points) values (1307002,'Management Accountant',1,30000,850);
 insert into Requirement_Info(post_id,post_name,vacancies,salary,points) values (1307003,'Advertising',1,35000,850);
 insert into Requirement_Info(post_id,post_name,vacancies,salary,points) values (1307004,'Fundraiser',1,35000,850);
 insert into Requirement_Info(post_id,post_name,vacancies,salary,points) values (1307005,'Lawyer',2,35000,850);
 insert into Requirement_Info(post_id,post_name,vacancies,salary,points) values (1307006,'Electrical Engineer',2,40000,850);
 insert into Requirement_Info(post_id,post_name,vacancies,salary,points) values (1307007,'Civil Engineer',1,37000,850);
 insert into Requirement_Info(post_id,post_name,vacancies,salary,points) values (1307008,'Mechanical Engineer',1,30000,850);
 insert into Requirement_Info(post_id,post_name,vacancies,salary,points) values (1307009,'Environmental Engineer',1,30000,850);
 insert into Requirement_Info(post_id,post_name,vacancies,salary,points) values (1307010,'Software Engineer',2,41000,850);
 
 
 
 
 
 insert into Post_Admin (post_id,admin_id) values (1307002,1407002);
 insert into Post_Admin (post_id,admin_id) values (1307003,1407009);
 insert into Post_Admin (post_id,admin_id) values (1307004,1407004);
 insert into Post_Admin (post_id,admin_id) values (1307005,1407005);
 insert into Post_Admin (post_id,admin_id) values (1307001,1407010);
 insert into Post_Admin (post_id,admin_id) values (1307006,1407001);
 insert into Post_Admin (post_id,admin_id) values (1307007,1407005);
 insert into Post_Admin (post_id,admin_id) values (1307008,1407004);
 insert into Post_Admin (post_id,admin_id) values (1307009,1407006);
 insert into Post_Admin (post_id,admin_id) values (1307010,1407003);
 
 
 
 
 insert into Post_Candidate (post_id,candidate_id) values (1307006,1507001);
 insert into Post_Candidate (post_id,candidate_id) values (1307010,1507002);
 insert into Post_Candidate (post_id,candidate_id) values (1307010,1507013);
 insert into Post_Candidate (post_id,candidate_id) values (1307005,1507003);
 insert into Post_Candidate (post_id,candidate_id) values (1307005,1507016);
 insert into Post_Candidate (post_id,candidate_id) values (1307008,1507004);
 insert into Post_Candidate (post_id,candidate_id) values (1307001,1507005);
 insert into Post_Candidate (post_id,candidate_id) values (1307007,1507006);
 insert into Post_Candidate (post_id,candidate_id) values (1307004,1507007);
 insert into Post_Candidate (post_id,candidate_id) values (1307002,1507008);
 insert into Post_Candidate (post_id,candidate_id) values (1307009,1507009);
 insert into Post_Candidate (post_id,candidate_id) values (1307003,1507010);
 insert into Post_Candidate (post_id,candidate_id) values (1307003,1507011);
 insert into Post_Candidate (post_id,candidate_id) values (1307007,1507009);
 insert into Post_Candidate (post_id,candidate_id) values (1307006,1507012);
 insert into Post_Candidate (post_id,candidate_id) values (1307006,1507014);
 insert into Post_Candidate (post_id,candidate_id) values (1307006,1507015);
 