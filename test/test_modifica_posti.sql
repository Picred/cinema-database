Use Cinema;

-- Aggiungo una vendita di un biglietto e poi verifico se i posti in quella sala si modificano
SELECT idbiglietto, idsala
FROM Biglietto
WHERE idbiglietto = 222;

SELECT idsala, nspettatori, postidisponibili
FROM Sala
WHERE idsala = 2;

INSERT INTO Vendita (idcassa, idbiglietto, idsnack, data) VALUES
	(2, 222, NULL, '2023-03-09');
    
SELECT idsala, nspettatori, postidisponibili
FROM Sala
WHERE idsala = 2;