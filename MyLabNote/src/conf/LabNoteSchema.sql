DROP TABLE Users;
DROP TABLE Entries;

CREATE TABLE Users (
	id CHAR(15) NOT NULL,
	name CHAR(40),
	email CHAR(100),
    version INT,
	PRIMARY KEY(id)
);

CREATE TABLE Entries (
	id CHAR(15) NOT NULL,
	creation_date TIMESTAMP NOT NULL,
	name CHAR(40),
	details CHAR(100),
    version INT,
	PRIMARY KEY(id)
);


INSERT INTO Users VALUES ('USR-001', 'Test Customer', 'test.customer@gmail.com', 1);
INSERT INTO Users VALUES ('USR-002', 'Asok Perumainar', 'asok@ebi.ac.uk', 1);
INSERT INTO Users VALUES ('USR-003', 'Anthony Orapallo', 'a.orapallo@gmail.com', 1);
INSERT INTO Users VALUES ('USR-004', 'Terri Cubeta', 'cubeta@tesco.co.uk', 1);
INSERT INTO Users VALUES ('USR-005', 'Bryan Basham', 'bryan@hello.com', 1);
INSERT INTO Users VALUES ('USR-006', 'Georgianna DG Meagher', 'g.meagher@gmail.com', 1);
INSERT INTO Users VALUES ('USR-007', 'Tom McGinn', 'tom@ebi.ac.uk', 1);

INSERT INTO Entries VALUES ('TAR-000001', '2009-01-05 13:01:30', 'Target', 'My first target.', 1);
INSERT INTO Entries VALUES ('EXP-000001', '2009-01-05 13:02:30', 'Experiment', 'My first experiment.', 1);
INSERT INTO Entries VALUES ('EXP-000002', '2009-01-05 13:03:30', 'Experiment', 'Some details about my second experiment.', 1);
INSERT INTO Entries VALUES ('SAM-000001', '2009-01-05 13:04:30', 'Sample', 'My first sample.', 1);
INSERT INTO Entries VALUES ('SAM-000002', '2009-01-05 13:05:30', 'Sample', 'Some details about my second sample.', 1);
INSERT INTO Entries VALUES ('SAM-000003', '2009-01-05 13:06:30', 'Sample', 'More details.', 1);
INSERT INTO Entries VALUES ('SAM-000004', '2009-01-05 13:07:30', 'Sample', 'More details.', 1);


