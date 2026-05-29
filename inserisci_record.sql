INSERT INTO Costruttore (Nome, Città, Nazione)
VALUES ('Marco','Roma','Italia');

SELECT * FROM Costruttore;

INSERT INTO Automobile (Targa, Modello, Tipo, Cilindrata, Alimentazione, Disponibilità, Anno_prod_modello, Nome_costruttore)
VALUES ('TR009IE', 'Opel', 'Corsa'; 100, 'Diesel', 2, 2000, 'Marco');

INSERT INTO Patente (Numero,Data_rilascio,Data_scadenza,Tipologia)
VALUES (23,'2017-03-21','2027-03-21','B');

INSERT INTO Cliente (Codice_fiscale,Nome,Cognome,Data_nascita,Telefono,Numero_patente)
VALUES ('RSSMRA85B15H501I','Medina','Jakupi','2002-07-16','03755106011',23);

INSERT INTO Noleggio (ID,Inizio_noleggio,Fine_noleggio,Costo,Targa_auto,Codice_fiscale_cliente)
VALUES ('0SA','2026-05-01','2026-05-05',80,'TR009IE','RSSMRA85B15H501I');