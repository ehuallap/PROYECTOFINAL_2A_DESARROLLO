use appasistant;

CREATE TABLE IF NOT EXISTS Routines(
	RoutineID INT AUTO_INCREMENT NOT NULL,
	RoutineTitle VARCHAR(50) NOT NULL,
	RoutineDescription TEXT,
	RoutineStart VARCHAR(30) NOT NULL,
	RoutineEnd VARCHAR(30) NOT NULL,	
	PRIMARY KEY(RoutineID)
);
ALTER TABLE Routines AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS Clients(
	ClientID INT AUTO_INCREMENT NOT NULL,	
	ClientName VARCHAR(500) NOT NULL,
	ClientEmail VARCHAR(300) NOT NULL,	
	PRIMARY KEY (ClientID)
);
ALTER TABLE Clients AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS Clients_Events(
	Routines_RoutineID INT NOT NULL,
	Clients_ClientID INT NOT NULL,
	PRIMARY KEY(Routines_RoutineID, Clients_ClientID),
	CONSTRAINT fkClient_Routines_Client
	FOREIGN KEY(Clients_ClientID)
	REFERENCES Clients(ClientID),
	CONSTRAINT fkClient_Client_Routines
	FOREIGN KEY(Routines_RoutineID)
	REFERENCES Events(RoutineID)
);
ALTER TABLE Clients_Events AUTO_INCREMENT = 1;

