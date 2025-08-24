drop table if exists student;
drop table if exists programme_courses;
drop table if exists programme;
drop table if exists courses;

create table student (
name text not null,
index text not null primary key unique,
gender text not null,
programme text not null,
password text not null,
level int not null
);

create table courses(
    name text not null,
    code text not null PRIMARY KEY,
    registered text
);

create table programme (
    id SERIAL PRIMARY KEY,
    department text not null,
    name text not null
);


create table programme_courses (
    programme_id SERIAL,
    course_code TEXT,
    CONSTRAINT fk_programme FOREIGN KEY(programme_id) REFERENCES programme(id),
    CONSTRAINT fk_course FOREIGN KEY(course_code) REFERENCES courses(code)
);

insert into courses (name, code) VALUES ('software eng', 'ceng309');
insert into courses (name, code) VALUES ('infromation retrival', 'ceng310');
insert into courses (name, code) VALUES ('reseach method', 'ceng311');
insert into courses (name, code) VALUES ('webpage design', 'ceng312');
insert into courses (name, code) VALUES ('operating system', 'ceng319');
insert into courses (name, code) VALUES ('object oriented programming', 'ceng123');

insert into programme (department, name) VALUES ('ACES', 'computer Engineering');

insert into student (name, index, gender, programme, password, level) VALUES('florence gyenin', 'ueb1102322','female','computer engineering','qwrtttgy', '300');