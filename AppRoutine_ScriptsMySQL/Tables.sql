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
	Routines_RoutineID INT NOT NULL,
	Clients_ClientID INT NOT NULL,
	PRIMARY KEY(Routines_RoutineID, Clients_ClientID),
	CONSTRAINT fkClient_Routines_Client
	FOREIGN KEY(Clients_ClientID)
	REFERENCES Clients(ClientID),
	CONSTRAINT fkClient_Client_Routines
	FOREIGN KEY(Routines_RoutineID)
	REFERENCES Routines(RoutineID)
);
ALTER TABLE Clients_Routines AUTO_INCREMENT = 1;
