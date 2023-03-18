-- OPERAZIONI (Per decommentare tutte le operazioni eliminare solamente /* dalla riga successiva e */ dall'ultima riga)
/*

-- 1. Inserimento di un nuovo turno di lavoro dell'operatore con cfoperatore = CF12345678900010
SELECT * 
FROM Operatore;

INSERT INTO Turno (giorno, orainizio, orafine, cfoperatore)
VALUES ('2023-01-13', '09:00:00', '17:00:00', 'CF12345678900010');

SELECT * 
FROM Turno
WHERE cfoperatore = 'CF12345678900010';

-- 2. Modifica del prezzo di uno snack
SELECT * 
FROM Snack;

UPDATE Snack
SET prezzo = 7.50
WHERE idsnack = 1;

SELECT * 
FROM Snack
WHERE idsnack = 1;

-- 3. Visualizza l'incasso giornaliero del giorno '2023-03-08'
SELECT giorno, incassogiornaliero
FROM Cassa
WHERE giorno = '2023-03-08';


-- 4. Lettura dei feedback medi per il film con idfilm = 5
SELECT * 
FROM Film;

SELECT *
FROM Feedback;


SELECT fi.idfilm, fi.titolo, g.nome as genere, AVG(fe.valutazione) AS media_feedback
FROM Feedback fe
JOIN Film fi ON fe.idfilm = fi.idfilm
JOIN Genere g ON fi.genere = g.idgenere
WHERE fi.idfilm = 5;


-- 5. Inserimento di un nuovo feedback con valutazione 3 del film con idfilm = 5
INSERT INTO Feedback (idfeedback, valutazione, idfilm)
VALUES (300, 3, 5);

SELECT * 
FROM Feedback;


-- 6. Lettura del numero di posti nella sala 3
SELECT idsala, postidisponibili
FROM Sala
where idsala = '3';

-- 7. Inserimento di una nuova vendita
INSERT INTO Vendita (idcassa, idbiglietto, idsnack, data) VALUES
	(3, 444, 3, '2023-03-12'),
    (3, NULL, 5, '2023-03-12'),
    (3, NULL, 2, '2023-03-12');
    
SELECT *
FROM Vendita;
    


-- 8. Lettura degli incassi giornalieri per ogni giorno con inserimento di vendita di esempio
INSERT INTO Vendita (idcassa, idbiglietto, idsnack, data) VALUES
	(2, 444, 3, '2023-01-01'),
    (2, NULL, 5, '2023-01-01'),
    (2, 222, 2, '2023-01-01');

SELECT giorno, SUM(incassogiornaliero) AS incasso_giornaliero, numerocassa
FROM Cassa
GROUP BY giorno, numerocassa;

*/