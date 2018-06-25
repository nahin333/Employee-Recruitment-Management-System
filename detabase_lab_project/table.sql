select * from tab;
drop table Post_Candidate;
drop table Post_Admin;
drop table Requirement_Info;
drop table Administration_Info;
drop table Candidate_Info;

create table Candidate_Info(
     candidate_id integer,
	 name varchar(20) not null,
	 gender varchar(10),
	 university varchar(20),
	 subject varchar(20),
     cgpa number(3,2) default 2.00 check(cgpa>=2.00 and cgpa<=4.00),
	 qualification varchar(50),
	 points integer,
	 primary key(candidate_id)
	 );

create table Administration_Info(
    admin_id integer,
	name varchar(20),
	post varchar(30),
	salary number(7) check(salary>=20000 and salary <=90000),
	primary key(admin_id)
	);

create table Requirement_Info(
    post_id integer,
    post_name varchar(50),
    vacancies integer,
    salary number(7) check(salary>=20000 and salary <=90000),
    points integer,
	primary key(post_id)
	);
	
create table Post_Admin(
    post_id integer,
    admin_id integer,
    foreign key(post_id) references Requirement_Info(post_id) on delete cascade,
    foreign key(admin_id) references Administration_Info(admin_id)on delete cascade,
    primary key(post_id,admin_id)
  );

create table Post_Candidate(
    post_id integer,
    candidate_id integer,
    foreign key(post_id) references Requirement_Info(post_id) on delete cascade,
    foreign key(candidate_id) references Candidate_Info(candidate_id)on delete cascade,
    primary key(post_id,candidate_id)
  );
  
select * from Candidate_Info;
select * from Administration_Info;
select * from Requirement_Info;
select * from Post_Admin;
select * from Post_Candidate;