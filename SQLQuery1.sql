

create table DT_department(
	dept_id int not null primary key,
	dept_name varchar(20),
	dept_phone varchar(20))
create table DT_vendor(
	vendor_id int not null primary key,
	vendor_name varchar(20),
	vendor_address varchar(20),
	dept_id int, 
	foreign key (dept_id) references DT_department(dept_id)	);
create table DT_skill(
	skill_no int not null primary key,
	skill_description varchar(200));
create table DT_project(
	project_id int not null primary key,
	estimated_cost varchar(20));
create table DT_location(
	location_id int not null primary key, 
	location_city varchar(20),
	location_state varchar(20),
	location_population int,
	project_id int not null,
	foreign key (project_id) references DT_project(project_id));
create table DT_employee(
	emp_no int not null primary key,
	dept_id int ,
	emp_name varchar(20),
	emp_title varchar(20),
	date_of_birth date,
	marital_status varchar(20),
	skill_no int  not null,
	location_id int not null,
	foreign key (location_id) references DT_location(location_id),
	foreign key (skill_no) references DT_skill(skill_no),
	foreign key (dept_id) references DT_department(dept_id));

insert into DT_department VAlUES(1, 'Management', '232323332')
insert into DT_department VALUES(2, 'Accounts', '2312334222')
insert into DT_department VALUES(3, 'sales', '344234552')
insert into DT_department VALUES(4, 'Marketing', '89990977')
insert into DT_department VALUes(5, 'Purchase', '54777223')
insert into DT_department VALUES(6, 'Personnel', '43366663')
insert into DT_department VALUES(7, 'Administrative', '77787855343')

insert into DT_vendor VALUES(1, 'mark', 'Ohio 100', 1)
insert into DT_vendor VALUES(2, 'apple', 'Ohio 100', 2)
insert into DT_vendor VALUES(3, 'zen', 'New Mexico', 3)
insert into DT_vendor VALUES(4, 'Oill', 'Oklahama', 4)
insert into DT_vendor VALUES(5, 'Dillec', 'Missouri', 5)
insert into DT_vendor VALUES(6, 'Kansas', 'Kansas', 6)
insert into DT_vendor VALUES(7, 'Chakapadi', 'Asia', 7)

insert into DT_skill VALUES(1, 'Managerial')
insert into DT_skill VALUES(2, 'CTO')
insert into DT_skill VALUES(3, 'Managerial')
insert into DT_skill VALUES(4, 'Managerial')
insert into DT_skill VALUES(5, 'CTO')
insert into DT_skill VALUES(6, 'Managerial')
insert into DT_skill VALUES(7, 'Chief Manager')


insert into DT_project VALUES(1, '2,000,000,000')
insert into DT_project VALUES(2, '3,000,000,000')
insert into DT_project VALUES(3, '100,000')
insert into DT_project VALUES(4, '2,000,000')
insert into DT_project VALUES(5, '100,000')
insert into DT_project VALUES(6, '439,000')
insert into DT_project VALUES(7, '544445')

insert into DT_location VALUES(1, 'Ohio', 'US', 1000, 1)
insert into DT_location VALUES(2, 'Mexico',' US', 2000000, 2)
insert into DT_location VALUES(3, 'Kansas', 'US', 20000, 3)
insert into DT_location VALUES(4, 'New Mexico', 'US', 19900000, 4)
insert into DT_location VALUES(5, 'Olkohama', 'US', 1239998, 5)
insert into DT_location VALUES(6, 'Arizona', 'US', 54422, 6)
insert into DT_location VALUES(7, 'Missouri', 'US', 5444433, 7)



insert into DT_employee VALUES(100, 1, 'Mark Mayes', 'Manager', '10/12/1999', 'Married', 1, 1)
insert into DT_employee VALUES(2, 2, 'Skeep Lo', 'Social engineer', '21/12/1990', 'Divorced', 2,2)
insert into DT_employee VALUES(3, 3, 'G Lawyer', 'CTO', '12/10/1998', 'Single', 3.3)
insert into DT_employee VALUeS(4, 4, 'Mercy Mary', 'HR', '03/04/1999', 'Married', 4, 4)
insert into DT_employee VALUES(5, 5, 'Elesta Vayer', 'Assistant Manager', 'Single', 5, 5)
insert into DT_employee VALUES(6, 6, 'Mark John', 'quality Assurance', 'Married', 6, 6)
insert into DT_employee VALUES(7, 7, 'Joel Mark', 'CTP', 'Single', 7,7)
