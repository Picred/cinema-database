-- CREAZIONE DATABASE

DROP DATABASE IF EXISTS `Cinema`;
CREATE DATABASE IF NOT EXISTS `Cinema`;
USE `Cinema`;

CREATE TABLE IF NOT EXISTS Genere(
	idgenere SMALLINT PRIMARY KEY,
    nome TEXT NOT NULL CHECK (nome IN ('Horror', 'Romantico', 'Comico'))
);

CREATE TABLE IF NOT EXISTS Film(
	idfilm SMALLINT,
    titolo TEXT,
    genere SMALLINT NOT NULL,
    PRIMARY KEY (idfilm),
    FOREIGN KEY (genere) REFERENCES Genere(idgenere)
);

CREATE TABLE IF NOT EXISTS Feedback(
	idfeedback SMALLINT PRIMARY KEY,
    valutazione SMALLINT NOT NULL DEFAULT 1 CHECK (valutazione >0 AND valutazione <6),
    idfilm SMALLINT,
    FOREIGN KEY (idfilm) REFERENCES Film(idfilm)
);

CREATE TABLE IF NOT EXISTS Sala(
	idsala SMALLINT,
    idfilm SMALLINT,
    nspettatori SMALLINT DEFAULT 0 CHECK (nspettatori <= 100),
    postidisponibili SMALLINT DEFAULT 100 CHECK (postidisponibili >=0),
    PRIMARY KEY (idsala),
    FOREIGN KEY (idfilm) REFERENCES Film(idfilm)
);

CREATE TABLE IF NOT EXISTS Biglietto(
	idbiglietto SMALLINT,
    prezzo FLOAT NOT NULL, 
    idsala SMALLINT NOT NULL,
    PRIMARY KEY (idbiglietto),
    FOREIGN KEY (idsala) REFERENCES Sala(idsala)
);

CREATE TABLE IF NOT EXISTS Snack(
	idsnack SMALLINT PRIMARY KEY,
    nome VARCHAR(30) NOT NULL,
    prezzo FLOAT NOT NULL
);

CREATE TABLE IF NOT EXISTS Cassa (
	numerocassa SMALLINT,
    incassogiornaliero FLOAT,
    giorno DATE,
    PRIMARY KEY (numerocassa, giorno)
);

CREATE TABLE IF NOT EXISTS Vendita(
	idvendita SMALLINT AUTO_INCREMENT,
	idcassa SMALLINT,
    idbiglietto SMALLINT,
    idsnack SMALLINT,
    data DATE,
    PRIMARY KEY (idvendita),
    FOREIGN KEY (idsnack) REFERENCES Snack(idsnack),
    FOREIGN KEY (idbiglietto) REFERENCES Biglietto(idbiglietto),
    FOREIGN KEY (idcassa)  REFERENCES Cassa(numerocassa)
);


CREATE TABLE IF NOT EXISTS Operatore (
	cfoperatore VARCHAR(16) NOT NULL PRIMARY KEY,
	datanascita DATE NOT NULL,
    nome VARCHAR(30) NOT NULL,
    cognome VARCHAR(30) NOT NULL,
    idcassa SMALLINT,
    FOREIGN KEY (idcassa) REFERENCES Cassa(numerocassa) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS Turno (
	giorno DATE NOT NULL,
    orainizio TIME NOT NULL,
    orafine TIME NOT NULL,
    cfoperatore VARCHAR(16),
    PRIMARY KEY (giorno,orainizio,orafine),
    FOREIGN KEY (cfoperatore) REFERENCES Operatore(cfoperatore)
);