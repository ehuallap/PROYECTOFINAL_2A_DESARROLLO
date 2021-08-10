USE proyectassistant;

INSERT INTO Clients(ClientName, ClientEmail, ClientRoutines)
VALUES
("Erick", "ehualap", 0),
("Miguel", "migueld", 0),
("Marbel", "pchani", 0);

INSERT INTO Routines(RoutineTitle, RoutineDescription, RoutineStart, RoutineEnd, RoutineTime, RoutineClients)
VALUES
("Primera rutina", "Descripcion 1", "2021/08/02", "2021/08/02", 2000, 0),
("Segunda rutina", "Descripcion 2", "2021/08/05", "2021/08/05", 3000, 0),
("Tercera rutina", "Descripcion 3", "2021/08/07", "2021/08/07", 1000, 0);

INSERT INTO Clients_Routines(RoutineID, ClientID)
VALUES
(3, 3);

SELECT * FROM Routines;
SELECT * FROM Clients;
SELECT * FROM Clients_Routines;
SELECT * FROM Clients WHERE ClientID=6;
DELETE FROM Clients WHERE ClientID=3;