USE `cinema`;

-- TEST trigger aggiorna_incasso. Aggiungo una vendita e controllo se l'incasso giornaliero per quella cassa si aggiorna.
SELECT * FROM Cassa;
SELECT * FROM Biglietto;
SELECT * FROM Snack;

INSERT INTO Vendita (idcassa, idbiglietto, idsnack, data) VALUES 
    (3, NULL , 5 , '2023-03-11');
    
SELECT * 
FROM Cassa
WHERE numerocassa = 3;