/*create table countries (
id serial primary key,
country_name VARCHAR(1000),
continent VARCHAR (500)
);

create table sport_categories (
id serial primary key,
category_name varchar (500)
);

create table sports (
id serial primary key,
sport_name varchar (1000),
isteamsport bool,
issummersport bool,
categoryid int,
foreign key (categoryid) references sport_categories (id)
);

create table disciplines(
id serial primary key,
discipline_name varchar (1000),
sportid int,
foreign key (sportid) references sports (id)
);

create table players (
id serial primary key,
name_surname varchar(2000),
age int,
weight int,
disciplineid int,
countryid int,
foreign key (disciplineid) references disciplines(id),
foreign key (countryid) references countries (id)
);

create table medals(
id serial primary key,
medal_type varchar(100),
disciplineid int,
playerid int,
foreign key (disciplineid) references disciplines(id),
foreign key (playerid) references players(id)
); 
	
insert into countries (country_name, continent) values ('England', 'Europe');
insert into countries (country_name, continent) values ('Germany', 'Europe');
insert into countries (country_name, continent) values ('Switzerland', 'Europe'); 
insert into sport_categories (category_name) values ('Football');
insert into sport_categories (category_name) values ('Tennis');
insert into sport_categories (category_name) values ('Swimming'); 
insert into sports (sport_name,isteamsport,issummersport,categoryid) values ('Swimming', 'False', 'True','3');
insert into sports (sport_name,isteamsport,issummersport,categoryid) values ('Football', 'True', 'True','1');
insert into sports (sport_name,isteamsport,issummersport,categoryid) values ('Tennis', 'False', 'True','2'); 
insert into disciplines (discipline_name,sportid) values ('Tennis', '2');
insert into disciplines (discipline_name,sportid) values ('Football', '1');
insert into disciplines (discipline_name,sportid) values ('Swimming', '3'); 
insert into players (name_surname,age,weight,disciplineid,countryid) values ('Roger Federer', '42', '78','2','3');
insert into players (name_surname,age,weight,disciplineid,countryid) values ('Mane Pele', '22', '68','1','2');
insert into players (name_surname,age,weight,disciplineid,countryid) values ('Neymar', '32', '88','3','1'); 
insert into medals (medal_type,disciplineid,playerid) values ('gold', '2','1');
insert into medals (medal_type,disciplineid,playerid) values ('bronze', '1','3');
insert into medals (medal_type,disciplineid,playerid) values ('gold', '3','2'); */

select * from medals
inner join disciplines on medals.disciplineid = disciplines.id