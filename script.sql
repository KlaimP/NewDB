create table student(
	id integer Primary Key,
	first varchar(50),
	last varchar(50),
	sex char(1)
);
create table mark(
	id integer Primary Key,
	exam integer,
	stud integer,
	res integer
);
create table exam(
	id integer Primary Key,
	discrip integer,
	ts timestamp
);
create table discipline(
	id integer Primary Key,
	descr varchar(50)
);

ALTER TABLE mark ADD CONSTRAINT fkMarkStud FOREIGN KEY (stud) REFERENCES student(id);
ALTER TABLE mark ADD CONSTRAINT fkMarkExam FOREIGN KEY (exam) REFERENCES exam(id);
ALTER TABLE exam ADD CONSTRAINT fkExamDisc FOREIGN KEY (discrip) REFERENCES discipline(id);