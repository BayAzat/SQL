create table city(
id serial primary key,
title varchar(30) 
);

insert into city(title)
values ('Warsaw'),
		('Dubai'),
		('Budapesh'),
		('New York'),
		('Stambul'),
		('Krakow'),
		('Larnaka');

create table Persons(
	person_name varchar(80),
	city_id int
);

insert into Persons(person_name, city_id)
values ('Alex', 2),
		('Dmitriy', 4),
		('Vadim', 2),
		('Anna', 1),
		('Victor', 5),
		('Natalia', 3),
		('Sergey', 1),
		('Tanya', 6);

insert into Persons(person_name, city_id)
values ('Tom', 9),
		('Sam', 10);
	
select * from Persons;

select * from persons join city
on persons.city_id = city.id;

select * from persons left outer join city 
on persons.city_id = city.id;

select * from persons right outer join city 
on persons.city_id = city.id;

select * from persons full join city
on persons.city_id = city.id;