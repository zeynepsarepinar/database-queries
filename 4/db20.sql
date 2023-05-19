create table person (
    person_id int primary key,
    person_name varchar(50) not null,
    person_surname varchar(50),
    person_email varchar(100) unique,
    person_age int check (person_age >= 21)
);