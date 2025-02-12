use practise;

create table Persons (
	ID int PRIMARY KEY not null,
    first_name varchar(255) not null,
    last_name varchar(255) not null,
    Unique(ID)
);

desc persons;