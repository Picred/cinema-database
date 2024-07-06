USE `cinema`;

-- Ogni volta che inserisco una vendita nuova, in quel momento, aggiungo tale vendita in Cassa con il relativo giorno e incassogiornaliero, inizializzato a 0 e poi incrementato con il valore di vendita

SELECT * FROM Vendita;

SELECT * 
FROM Cassa
WHERE giorno = '2023-01-01';

SELECT * FROM Snack;


INSERT INTO Vendita (idcassa, idbiglietto, idsnack, data) VALUES
	(2, NULL, 3, '2023-01-01');
    
