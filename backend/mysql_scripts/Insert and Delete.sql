USE proyectassistant;

DELETE FROM Clients;
DELETE FROM Routines;

ALTER TABLE Clients AUTO_INCREMENT = 1;
ALTER TABLE Routines AUTO_INCREMENT = 1;

INSERT INTO Clients(ClientName, ClientEmail, ClientRoutines)
VALUES
("Erick", "hualla@unsa.edu.pe", 0),
("Miguel", "migueld@unsa.edu.pe", 0),
("Marbel", "pchani@unsa.edu.pe", 0),
("Ricardo", "ricardo@unsa.edu.pe", 0),
("Eduardo", "pchani@unsa.edu.pe", 0),
("Juan", "djuan@unsa.edu.pe", 0),
("José", "cjose@unsa.edu.pe", 0),
("Sebastian", "sebastian@unsa.edu.pe", 0),
("Cristopher", "cristopher@unsa.edu.pe", 0),
("Antonio", "antonio@unsa.edu.pe", 0),
("Alfredo", "alfredo@unsa.edu.pe", 0),
("Abigail", "abigail@unsa.edu.pe", 0),
("Lourdes", "lourdes@unsa.edu.pe", 0),
("Mauricio", "mauricio", 0);

INSERT INTO Routines(RoutineTitle, RoutineDescription, RoutineStart, RoutineEnd, RoutineTime, RoutineClients)
VALUES
("Haz Lectura", "Toma algun libro que tengas y lee todas las hojas posibles antes de que te aburras", "2021/08/10", "2021/08/10", 2000, 0),
("Ten una caminata", "Levantante de tu cama o silla y explora toda la casa, aver si encuentras algo nuevo!", "2021/08/10", "2021/08/10", 1500, 0),
("Intenta el baile Moderno", "Danzar es una actividad poco común pero muy desestresante, intentalo!", "2021/08/10", "2021/08/10", 2000, 0),
("Practica yoga", "A veces es necesario prestar atención a las señales de la mente, ve a por ello!", "2021/08/10", "2021/08/10", 1500, 0),
("Aprende estiramientos", "El constante sedentarismo genera problemas en tu vertebra, es hora de estirarlas!", "2021/08/10", "2021/08/10", 2000, 0),
("Ten alguna distracción", "Despues de una larga jornada de actividades es importante relajar tu mente", "2021/08/10", "2021/08/10", 3000, 0),
("Toma agua", "El cuerpo necesita de 8 vasos de agua al dia, pero estaditicamente solo toman 3 en promedio, rompe esa regla!", "2021/08/10", "2021/08/10", 500, 0),
("Viaja desde Internet", "A veces puedes tener aventuras increibles incluso sin salir de casa, intentalo!", "2021/08/10", "2021/08/10", 3000, 0),
("Prepara alguna receta", "La imaginación de un chef es espontánea pero precisa, te atreves a imitarlo?", "2021/08/10", "2021/08/10", 4500, 0),
("Tomate fotos inolvidables", "Los mejores momentos se pueden plasmar de forma digital, vamos a por esa camara!", "2021/08/10", "2021/08/10", 2000, 0),
("Personaliza tu ropa", "El mejor estilo de ropa es aquel hecho a mano, traaemos unas tijeras e hilos?", "2021/08/10", "2021/08/10", 5500, 0),
("Toca algun instrumento", "Con música las personan lloran, sonrien, bailan, aman ... en resumen viven", "2021/08/10", "2021/08/10", 2000, 0),
("Mira alguna película", "Cada nueva pelicula te adentra en un nuevo fascinante universo, traemos las canchitas?", "2021/08/10", "2021/08/10", 13000, 0),
("Llama a algún amigo", "Los lazos de amistad son esenciales para disfrutar de una vida plena, llama a algún amigo!", "2021/08/10", "2021/08/10", 1500, 0),
("Haz algo de ejercicio", "Si ejercitas no solo la mente sino también el cuerpo, el universo te lo agradecerá, listo?", "2021/08/10", "2021/08/10", 2000, 0),
("Acaricia alguna de tus mascotas", "No solo los cachorros, sino todos los animales son amigos del hombre, ve a mimarlo", "2021/08/10", "2021/08/10", 1000, 0),
("Sube y baja las escaleras", "Recuerda ejercitar las piernas y los músculos inferiores del cuerpo, ya tienes al agua lista?", "2021/08/10", "2021/08/10", 2000, 0),
("Respira profundamente", "No solo necesitamos oxigenar los pulmones sino también el alma, respira profundamente!", "2021/08/10", "2021/08/10", 1500, 0),
("Pinta algun dibujo", "La mejor forma de expresar nuestra creatividad es a traves del arte, intentemos igualar a Piccaso!", "2021/08/10", "2021/08/10", 3000, 0),
("Busca trucos de magia", "La magia es todo un arte, y como tal es necesario conocer sus secretos para dominarlo a la perfección!", "2021/08/10", "2021/08/10", 2500, 0),
("Prepara todo para dormir", "Dormir es una actividad relajante y mas aún si tienes todo listo para hibernar como un oso, esa almohada es mia!", "2021/08/10", "2021/08/10", 3000, 0),
("Planta un arbol", "El mejor momento para plantar un arbol fue hace 20 años, el segundo mejor momento es ahora. Vamos a por ello!", "2021/08/07", "2021/08/07", 1000, 0);

INSERT INTO Clients_Routines(RoutineID, ClientID)
VALUES
(1, 1),
(2, 2),
(3, 2),
(3, 4),
(4, 5),
(6, 3),
(6, 7),
(9, 6),
(9, 10),
(9, 12),
(12, 13);

SELECT * FROM Routines;
SELECT * FROM Clients;
SELECT * FROM Clients_Routines;
