-- TRIGGER

-- ogni volta che si inserisce una vendita, viene aggiornato incassogiornaliero per quella vendita. E possibile acquistare sia biglietto e snack o prodotti separati
DELIMITER $$
CREATE TRIGGER aggiorna_incasso
AFTER INSERT ON Vendita
FOR EACH ROW
BEGIN
    DECLARE snack_prezzo FLOAT;
    DECLARE biglietto_prezzo FLOAT;
    -- Prelevo il prezzo dello snack
    SET snack_prezzo = (SELECT prezzo 
						FROM Snack s
                        WHERE s.idsnack = NEW.idsnack);
	-- Prelevo il prezzo del biglietto
    SET biglietto_prezzo = (SELECT prezzo 
							FROM Biglietto b 
                            WHERE b.idbiglietto = NEW.idbiglietto);
    -- COALESCE restituisce il primo valore NOT NULL in una lista di valori
    UPDATE Cassa SET incassogiornaliero = incassogiornaliero + 
        COALESCE(snack_prezzo, 0) + COALESCE(biglietto_prezzo, 0)
    WHERE numerocassa = NEW.idcassa
    AND giorno = NEW.data;
END $$
DELIMITER ;


-- Alla registrazione di una nuova vendita, se questa non è già registrata già nella cassa allora la registra
DELIMITER $$
CREATE TRIGGER controlla_cassa
BEFORE INSERT ON Vendita
FOR EACH ROW
BEGIN
    IF NOT EXISTS (SELECT * 
				   FROM Cassa
                   WHERE giorno = NEW.data)
	THEN
        INSERT INTO Cassa (numerocassa, incassogiornaliero,giorno) 
        VALUES (NEW.idcassa, 0, NEW.data);
    END IF;
END $$
DELIMITER ;


-- Ogni volta che viene registrata una vendita di un biglietto, il numero di posti disponibili decrementa e il numero di spettatori incrementa
DELIMITER $$
CREATE TRIGGER modifica_posti
AFTER INSERT ON Vendita
FOR EACH ROW
BEGIN
    UPDATE Sala SET postidisponibili = postidisponibili - 1, nspettatori = nspettatori + 1 
    WHERE idsala = (SELECT idsala 
					FROM Biglietto 
                    WHERE idbiglietto = NEW.idbiglietto);
END $$

DELIMITER ;