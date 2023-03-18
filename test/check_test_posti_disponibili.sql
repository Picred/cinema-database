use cinema;

-- test vendita biglietti dove il numero di posti disponibili è 1, e poi 0 (quindi bisogna registrare 2 vendite)
/*
INSERT INTO Vendita (idcassa, idbiglietto, idsnack, data) VALUES 
    (3, 444, NULL , '2023-03-08');
*/

-- la seconda vendita dovrebbe non andare per via di CHECK nella definizione della tabella
/*
INSERT INTO Vendita (idcassa, idbiglietto, idsnack, data) VALUES 
    (3, 444, NULL , '2023-03-11');
*/


select * from vendita;
select * from sala;
select * from biglietto;
select * from cassa;