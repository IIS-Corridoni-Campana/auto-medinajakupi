

CREATE TABLE Costruttore
(
  Nome VARCHAR NOT NULL,
  Città VARCHAR NOT NULL,
  Nazione VARCHAR NOT NULL,
  PRIMARY KEY (Nome)
);

CREATE TABLE Automobile
(
  Targa VARCHAR NOT NULL,
  Modello VARCHAR NOT NULL,
  Tipo VARCHAR NOT NULL,
  Cilindrata INT NOT NULL,
  Alimentazione VARCHAR NOT NULL,
  Disponibilità INT NOT NULL,
  Anno_prod_modello DATE NOT NULL,
  Nome_costruttore VARCHAR NOT NULL,
  PRIMARY KEY (Targa),
  FOREIGN KEY (Nome_costruttore) REFERENCES Costruttore(Nome)
);

CREATE TABLE Patente
(
  Numero INT NOT NULL,
  Data_rilascio DATE NOT NULL,
  Data_scadenza DATE NOT NULL,
  Tipologia VARCHAR NOT NULL,
  PRIMARY KEY (Numero)
);

CREATE TABLE Cliente
(
  Codice_fiscale VARCHAR NOT NULL,
  Nome VARCHAR NOT NULL,
  Cognome VARCHAR NOT NULL,
  Data_nascita DATE NOT NULL,
  Telefono VARCHAR NOT NULL,
  Numero_patente INT NOT NULL,
  PRIMARY KEY (Codice_fiscale),
  FOREIGN KEY (Numero_patente) REFERENCES Patente(Numero)
);

CREATE TABLE Noleggio
(
  ID VARCHAR NOT NULL,
  Inizio_noleggio DATE NOT NULL,
  Fine_noleggio DATE NOT NULL,
  Costo FLOAT NOT NULL,
  Targa_auto VARCHAR NOT NULL,
  Codice_fiscale_cliente VARCHAR NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (Targa_auto) REFERENCES Automobile(Targa),
  FOREIGN KEY (Codice_fiscale_cliente) REFERENCES Cliente(Codice_fiscale)
);
