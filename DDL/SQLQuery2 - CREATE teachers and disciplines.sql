

CREATE TABLE Teachers 
(
	teacher_id	INT		PRIMARY KEY,
	last_name	NVARCHAR(50)	NOT NULL,
	first_name	NVARCHAR(50)	NOT NULL,
	middle_name	NVARCHAR(50)	NOT NULL,
	birth_date	DATE			NOT NULL
);

CREATE TABLE Disciplines 
(
	discipline_id		SMALLINT		PRIMARY KEY,
	discipline_name		NVARCHAR(256)	NOT NULL,
	number_of_lessons	TINYINT			NOT NULL
);

CREATE TABLE DisciplinesDirectionsRelation 
(
	discipline	SMALLINT,
	direction	TINYINT,
	PRIMARY KEY (discipline, direction),
	CONSTRAINT FK_DDR_Discipline	FOREIGN KEY discipline	REFERENCES	Discipline(discipline_id),
	CONSTRAINT FK_DDR_Direction		FOREIGN KEY direction	REFERENCES	Drections(direction_id)
);

CREATE TABLE TeachersDisciplineRelation
(
	teacher		INT,
	DISCIPLINE	SMALLINT,
	PRIMARY KEY(teacher,discipline),
	CONSTRAINT	FK_TDR_Teachers		FOREIGN KEY teacher		REFERENCES Teachers(teacher_id),
	CONSTRAINT	FK_TDR_Disciplines	FOREIGN KEY disciplinne	REFERENCES Disciplines(discipline_id)
);

CREATE TABLE RequiredDiscipline
(
	discipline			SMALLINT,
	required_discipline	SMALLINT,
	PRIMARY KEY(discipline, required_discipline),
	CONSTRAINT	FK_RD_Discipline	FOREIGN KEY discipline		REFERENCES Disciplines(discipline_id),
	CONSTRAINT	FK_RD_Requored	FOREIGN KEY required_discipline	REFERENCES Disciplines(discipline_id)
);

CREATE TABLE DependentDisciplines
(
	
);