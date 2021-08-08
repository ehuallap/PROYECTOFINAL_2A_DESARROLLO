CREATE SCHEMA proyectassistant;
USE proyectassistant;

CREATE TABLE IF NOT EXISTS Clients(
	ClientID INT AUTO_INCREMENT NOT NULL,
	ClientName VARCHAR(100) NOT NULL,
	ClientEmail VARCHAR(50) NOT NULL,
    ClientRoutines INT NOT NULL,
	PRIMARY KEY (ClientID)
);
ALTER TABLE Clients AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS Routines(
	RoutineID INT AUTO_INCREMENT NOT NULL,
	RoutineTitle VARCHAR(50) NOT NULL,
	RoutineDescription TEXT,
	RoutineStart DATE NOT NULL NOT NULL,
	RoutineEnd DATE NOT NULL NOT NULL,
    RoutineTime TIME NOT NULL,
    CHECK (RoutineTime > 0),
    RoutineClients INT NOT NULL,
	PRIMARY KEY(RoutineID)
);

ALTER TABLE Routines AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS Clients_Routines(
	RoutineID INT NOT NULL,
	ClientID INT NOT NULL,
	PRIMARY KEY(RoutineID, ClientID),
	CONSTRAINT fkRoutines_Client
	FOREIGN KEY(ClientID)
	REFERENCES Clients(ClientID)
	ON UPDATE CASCADE
    ON DELETE CASCADE,
	CONSTRAINT fkClient_Routines
	FOREIGN KEY(RoutineID)
	REFERENCES Routines(RoutineID)
	ON UPDATE NO ACTION
    ON DELETE NO ACTION
);

ALTER TABLE Clients_Routines AUTO_INCREMENT = 1;
