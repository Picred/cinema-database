-- INSERIMENTI

INSERT INTO Genere (idgenere, nome) VALUES
	(1, 'horror'),
	(2, 'romantico'),
	(3, 'comico');
    
    
INSERT INTO Film (idfilm, titolo, genere) VALUES 
	(1, 'La casa infestata', '1'),
	(2, 'La sposa perfetta', '2'),
	(3, 'Benvenuti al sud', '3'),
	(4, 'Il mostro in cantina', '1'),
	(5, 'La cena', '3'),
	(6, 'Tra me e te', '2'),
	(7, 'Paranormal', '1'),
	(8, 'Beautiful', '2'),
	(9, 'Ho perso la macchina', '3'),
	(10, 'Non aprire quella porta', '1');


INSERT INTO Sala(idsala, idfilm, nspettatori, postidisponibili) VALUES 
	(1, 10, 50, 50),
	(2, 9, 70, 30),
	(3, 8, 80, 20),
	(4, 7, 90, 10),
	(5, 6, 60, 40),
	(6, 5, 40, 60),
	(7, 4, 30, 70),
	(8, 3, 75, 25),
	(9, 2, 99, 1),
	(10, 1, 65, 35);

INSERT INTO Cassa (numerocassa, incassogiornaliero, giorno) VALUES 
	(1, 400.0, '2023-03-10'),
	(2, 200.0, '2023-03-09'),
	(3, 500.0, '2023-03-08'),
	(3, 250, '2023-03-11'),
	(1, 440.0, '2023-03-01');


INSERT INTO Operatore (cfoperatore, datanascita, nome, cognome, idcassa) VALUES 
	('CF12345678900001', '1990-03-15', 'Mario', 'Rossi', 1),
	('CF12345678900003', '1987-11-05', 'Giovanna', 'Neri', 2),
	('CF12345678900004', '1985-06-12', 'Fabio', 'Verdi', 3),
	('CF12345678900007', '1988-04-23', 'Eleonora', 'Azzurri', 1),
	('CF12345678900009', '1990-12-17', 'Alessandro', 'Arancioni', 3),
	('CF12345678900010', '1986-07-21', 'Sara', 'Viola', 2);


INSERT INTO Snack (idsnack, nome, prezzo) VALUES 
	(1, 'Popcorn', 4.0),
	(2, 'Bibita', 2.5),
	(3, 'Nachos', 5.0),
	(4, 'Hot dog', 3.5),
	(5, 'Patatine', 2.0);


INSERT INTO Feedback (idfeedback, valutazione, idfilm) VALUES 
	(124, 4, 1),
	(243, 3, 2),
	(301, 4, 3),
	(438, 2, 1),
	(500, 5, 5);


INSERT INTO Biglietto (idbiglietto, prezzo, idsala) VALUES 
	(111, 10.50, 9),
	(222, 7.00, 2),
	(333, 9.00, 7),
	(444, 5, 6);


INSERT INTO Turno (giorno, orainizio, orafine, cfoperatore) VALUES 
	('2023-03-11', '10:00:00', '18:00:00', 'CF12345678900001'),
	('2023-03-11', '9:00:00', '18:00:00', 'CF12345678900007'),
	('2023-03-12', '09:00:00', '17:00:00', 'CF12345678900003'),
	('2023-03-12', '13:00:00', '21:00:00', 'CF12345678900007'),
	('2023-03-13', '12:00:00', '20:00:00', 'CF12345678900003');
    
    
INSERT INTO Vendita (idcassa, idbiglietto, idsnack, data) VALUES 
	(1, 111, 1, '2023-03-11'),
	(2, 222, 2, '2023-03-11'),
	(3, 333, 3, '2023-03-08'),
	(2, 222, 4, '2023-03-12');
