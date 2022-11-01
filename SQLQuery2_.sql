
create table performance(
	performance_id int not null primary key,
	date_performed varchar(20));
create table composition(
	composition_id int not null primary key, 
	c_name char(20), 
	composer_name char(20),
	performance_id int,
	foreign key (performance_id) references performance(performance_id));
create table concert(
	concert_no int not null primary key,
	concert_date varchar(20), 
	performance_id int,
	foreign key (performance_id) references performance(performance_id)	);
create table soloist(
	soloist_ID int not null primary key,
	first_name char(20),
	last_name char(20),
	performance_id int,
	foreign key (performance_id) references performance(performance_id));
create table conductor(
	firstname char(20),
	lastname char(20), 
	condctor_id int not null primary key,
	concert_no int,
	foreign key (concert_no) references concert(concert_no));
	
	insert into performance VALUES(1, '12/02/2022');
	insert into performance VALUES(2, '12/03/2022');
	insert into performance VALUES(3, '12/04/2022');
	insert into performance VALUES(4, '14/04/2022');
	insert into performance VALUES(5, '15/04/2022');
	insert into performance VALUES(6, '16/08/2022');
	insert into  performance VALUES(7, '18/08/2022');




	insert into composition VALUES(1, 'Movies', 'Wicky', 1);
	insert into composition VALUES(2, 'Happy events', 'Jacky', 2 );
	insert into composition VALUES(3, 'Wedding show', 'Madowo', 3);
	insert into composition VALUES(4, 'Piento', 'Larry', 4);
	insert into composition VALUES(5, 'Churchil', 'KMA', 5);
	insert into composition VALUES(6, 'Movie', 'Jackson', 6);
	insert into composition VALUES(7, 'Tricky', 'JJa', 7);

	insert into concert VALUES(1, '10/12/2022', 1);
	insert into concert VALUES(2, '10/10/2021', 2);
	insert into concert VALUES(3, '9/09/2022', 3);
	insert into concert VALUES(4, '6/02/2021', 4);
	insert into concert VALUES(5, '21/02/2021', 5);
	insert into concert VALUES(6, '8/08/2021', 6);
	insert into concert VALUES(7, '10/10/2021', 7);


	insert into soloist VALUES(1, 'Renny', 'See', 1);
	insert into soloist VALUES(2, 'LOyaltie', 'Kiri', 2);
	insert into soloist VALUES(3, 'Mercy', 'Skr', 3);
	insert into soloist VALUES(4, 'Cherry', 'leg', 4);
	insert into soloist VALUES(5, 'Cherry', 'Marv', 5);
	insert into soloist VALUES(6, 'Pingili', 'kerry', 6);
	insert into soloist VALUES(7, 'James', 'Wendy', 7);


	insert into conductor VALUES('John', 'Doe', 1, 1);
	insert into conductor VALUES('Hill', 'Men', 2, 2);
	insert into conductor VALUES('James', 'Willy', 3, 3);
	insert into conductor VALUES('Hillary', 'Free', 4, 4);
	insert into conductor VALUES('Wessy', 'Doe', 5, 5);
	insert into conductor VALUES('Skeeper', 'Kleen', 6, 6);
	insert into conductor VALUES('Weston', 'Omuch', 7, 7);

