DROP TABLE IF EXISTS Mitarbeiter;
DROP TABLE IF EXISTS Orte;
DROP TABLE IF EXISTS Fehlzeitgrund;
DROP TABLE IF EXISTS Abteilung;
DROP TABLE IF EXISTS Fehlzeit;

CREATE TABLE Orte (
    ORT_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Postleitzahl TEXT,
    Ort TEXT
);

insert into Orte (ORT_ID, Postleitzahl, Ort) values (1, 40007, 'Otutara');
insert into Orte (ORT_ID, Postleitzahl, Ort) values (2, 18712, 'Togu');
insert into Orte (ORT_ID, Postleitzahl, Ort) values (3, 20063, 'Ikot-Ekpene');
insert into Orte (ORT_ID, Postleitzahl, Ort) values (4, 23311, 'Tongjiaxi');
insert into Orte (ORT_ID, Postleitzahl, Ort) values (5, 31132, 'Magog');
insert into Orte (ORT_ID, Postleitzahl, Ort) values (6, 13287, 'Inda Silasē');
insert into Orte (ORT_ID, Postleitzahl, Ort) values (7, 17656, 'Uren’');
insert into Orte (ORT_ID, Postleitzahl, Ort) values (8, 37761, 'Cruzeiro do Sul');
insert into Orte (ORT_ID, Postleitzahl, Ort) values (9, 90331, 'Changhao');
insert into Orte (ORT_ID, Postleitzahl, Ort) values (10, 52742, 'Salitrillos');
insert into Orte (ORT_ID, Postleitzahl, Ort) values (11, 51060, 'Eschweiler');
insert into Orte (ORT_ID, Postleitzahl, Ort) values (12, 42230, 'Torrevieja');
insert into Orte (ORT_ID, Postleitzahl, Ort) values (13, 29011, 'Mucuri');
insert into Orte (ORT_ID, Postleitzahl, Ort) values (14, 33042, 'Kassala');
insert into Orte (ORT_ID, Postleitzahl, Ort) values (15, 41741, 'Primorskiy');
insert into Orte (ORT_ID, Postleitzahl, Ort) values (16, 63193, 'San Nicolas');
insert into Orte (ORT_ID, Postleitzahl, Ort) values (17, 36536, 'Erdaohe');
insert into Orte (ORT_ID, Postleitzahl, Ort) values (18, 75650, 'Psygansu');
insert into Orte (ORT_ID, Postleitzahl, Ort) values (19, 22191, 'Jiayuguan');
insert into Orte (ORT_ID, Postleitzahl, Ort) values (20, 40627, 'Mojo');
insert into Orte (ORT_ID, Postleitzahl, Ort) values (21, 63308, 'Garko');
insert into Orte (ORT_ID, Postleitzahl, Ort) values (22, 91766, 'Zürich');
insert into Orte (ORT_ID, Postleitzahl, Ort) values (23, 53968, 'Chizhou');
insert into Orte (ORT_ID, Postleitzahl, Ort) values (24, 31469, 'Putinci');
insert into Orte (ORT_ID, Postleitzahl, Ort) values (25, 15482, 'Khrystynivka');
insert into Orte (ORT_ID, Postleitzahl, Ort) values (26, 80630, 'Ndewel');
insert into Orte (ORT_ID, Postleitzahl, Ort) values (27, 77178, 'Longfengshan');
insert into Orte (ORT_ID, Postleitzahl, Ort) values (28, 21987, 'Yulin');
insert into Orte (ORT_ID, Postleitzahl, Ort) values (29, 26801, 'Maswarah');
insert into Orte (ORT_ID, Postleitzahl, Ort) values (30, 59036, 'Żarki');

CREATE TABLE Fehlzeitgrund (
    Grund_ID INTEGER,
    Grund TEXT,
    PRIMARY KEY (Grund_ID AUTOINCREMENT)
);
insert into Fehlzeitgrund (Grund) values ('Urlaub');
insert into Fehlzeitgrund (Grund) values ('Dienstreise');
insert into Fehlzeitgrund (Grund) values ('Krank');

CREATE TABLE Abteilung (
    A_ID INTEGER,
    Name TEXT,
    PRIMARY KEY (A_ID AUTOINCREMENT)
);

insert into Abteilung (Name) values ('Marketing');
insert into Abteilung (Name) values ('IT-Security');
insert into Abteilung (Name) values ('Consulting');
insert into Abteilung (Name) values ('Vertrieb');
insert into Abteilung (Name) values ('Lager');
insert into Abteilung (Name) values ('Fuhrpark');
insert into Abteilung (Name) values ('Management');

CREATE TABLE Mitarbeiter (
    MA_ID INTEGER,
    Nachname TEXT,
    Vorname TEXT,
    Geburtsdatum DATE,
    Eintrittsdatum DATE DEFAULT CURRENT_DATE,
    Austrittsdatum DATE DEFAULT NULL,
    ORT_ID INTEGER,
    A_ID INTEGER,
    PRIMARY KEY (MA_ID AUTOINCREMENT),
    FOREIGN KEY (ORT_ID) REFERENCES Orte(ORT_ID),
    FOREIGN KEY (A_ID) REFERENCES Abteilung(A_ID)
);

insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Frederick', 'Ethelbert', '1973-06-15', '2018-11-10', 11, 1);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Bartomieu', 'Greta', '1984-07-18', '2011-08-09', 9, 3);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Volleth', 'Clerissa', '1975-10-01', '2020-08-31', 25, 3);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Blackster', 'Curran', '1987-04-28', '2011-07-25', 29, 3);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Kobiera', 'Vonnie', '1981-08-07', '2017-11-13', 20, 2);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Semmence', 'Bette-ann', '1979-09-19', '2013-05-22', 28, 5);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Mordan', 'Joanne', '1985-08-24', '2022-10-23', 11, 4);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Eastam', 'Jacques', '1989-06-10', '2010-10-20', 2, 6);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Lieb', 'Oliy', '1977-10-01', '2018-06-23', 2, 5);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Joplin', 'Roby', '1981-12-07', '2014-05-15', 21, 5);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Schult', 'Marsha', '1971-10-02', '2019-06-18', 3, 6);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Farmiloe', 'Mano', '1971-06-10', '2023-12-05', 13, 6);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Kobiera', 'Nealson', '1973-06-09', '2023-07-23', 8, 2);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('McTrustie', 'Lilith', '1970-07-25', '2018-10-04', 26, 5);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Ruprecht', 'Brien', '1970-08-22', '2014-02-21', 18, 1);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Haw', 'Mel', '1974-02-16', '2015-11-28', 30, 2);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Kimbury', 'Gardiner', '1971-10-29', '2010-11-25', 9, 4);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Lafont', 'Gaylord', '1971-09-23', '2024-01-09', 23, 7);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Severy', 'Karlik', '1973-02-25', '2012-08-05', 19, 7);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Kyteley', 'Angelo', '1989-12-30', '2017-05-07', 26, 5);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Chapell', 'Christiane', '1990-01-15', '2018-10-08', 22, 3);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Di Pietro', 'Edik', '1987-02-02', '2017-12-21', 10, 4);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Minshall', 'Ebonee', '1974-07-08', '2013-09-04', 20, 7);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Sipson', 'Sabina', '1971-11-11', '2013-07-06', 17, 1);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Poschel', 'Marje', '1980-03-18', '2024-10-11', 21, 5);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Maruszewski', 'Ros', '1987-10-02', '2015-01-02', 11, 6);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Le Grice', 'Vanna', '1984-02-17', '2024-10-08', 16, 4);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Janous', 'Henrik', '1980-05-27', '2023-09-12', 13, 3);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Loveman', 'Myrtie', '1986-09-26', '2014-04-27', 12, 7);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Couch', 'Doroteya', '1979-06-23', '2014-09-23', 30, 1);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Brinklow', 'Abey', '1987-06-27', '2021-03-09', 24, 4);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Egger', 'Fidela', '1987-09-25', '2016-08-15', 10, 7);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Trayes', 'Michaelina', '1981-04-11', '2023-01-22', 2, 5);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Carling', 'Rodolfo', '1974-09-14', '2014-11-25', 1, 4);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Vann', 'Jacquelyn', '1989-03-05', '2013-11-27', 7, 7);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Gresswood', 'Bobinette', '1988-11-12', '2025-02-07', 1, 3);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Penrice', 'Les', '1972-07-21', '2019-02-18', 26, 4);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Cree', 'Hamnet', '1986-12-10', '2011-01-13', 21, 1);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Soltan', 'Lexis', '1982-07-29', '2020-03-21', 14, 7);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Kenvin', 'Solomon', '1975-05-08', '2021-04-11', 25, 2);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Taffrey', 'Meridel', '1975-04-27', '2019-09-17', 5, 6);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Bysaker', 'Kinny', '1980-04-21', '2016-09-28', 20, 4);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Clapperton', 'Francesca', '1985-11-08', '2012-03-22', 6, 7);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Gilling', 'Birch', '1978-12-04', '2014-01-23', 8, 3);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Very', 'Yanaton', '1987-10-04', '2018-08-01', 3, 4);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('De''Vere - Hunt', 'Rosabelle', '1977-09-12', '2017-11-07', 3, 3);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Bearward', 'Rutger', '1972-07-17', '2020-08-26', 3, 6);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Cawood', 'Christal', '1984-05-12', '2011-03-26', 30, 1);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Chazelas', 'Giacopo', '1975-07-18', '2018-07-27', 5, 1);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Dudley', 'Valenka', '1975-12-13', '2015-10-23', 23, 7);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Malt', 'Brandon', '1974-08-01', '2016-07-24', 9, 1);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Waggitt', 'Petronilla', '1971-12-28', '2012-06-20', 16, 2);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Cornil', 'Jeanelle', '1982-01-29', '2025-02-20', 26, 4);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Fayne', 'Charin', '1978-08-16', '2012-04-12', 26, 3);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Puttnam', 'Chad', '1970-03-04', '2018-08-13', 6, 2);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Dalgliesh', 'Laureen', '1984-09-16', '2024-01-27', 5, 1);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Bromilow', 'Janie', '1975-08-14', '2015-08-03', 22, 1);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Coe', 'Hercules', '1981-05-05', '2023-12-22', 14, 1);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Busfield', 'Kristien', '1979-12-25', '2012-01-12', 19, 4);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Nuzzti', 'Jannel', '1982-10-27', '2020-11-07', 14, 5);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Brittan', 'Dorothee', '1971-02-11', '2013-10-09', 23, 1);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Jorio', 'Dyna', '1975-11-03', '2019-11-25', 11, 3);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Yakovich', 'Norma', '1984-12-16', '2012-06-12', 25, 6);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Chamberlin', 'Boyd', '1987-12-03', '2019-01-05', 10, 6);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Janssen', 'Dasha', '1975-08-29', '2011-05-06', 10, 6);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Scally', 'Townsend', '1979-07-12', '2019-07-11', 15, 6);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Iorizzo', 'Philippa', '1974-08-27', '2013-04-17', 28, 7);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Lamzed', 'Humphrey', '1981-12-24', '2019-11-12', 11, 2);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Oloshkin', 'Lin', '1986-10-02', '2017-11-26', 27, 5);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Petrecz', 'Kelcie', '1971-08-08', '2021-05-29', 20, 4);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Lyosik', 'Carmelia', '1973-01-25', '2018-10-24', 12, 7);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Blackader', 'Marlena', '1984-05-06', '2022-05-18', 22, 2);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Boshere', 'Florella', '1979-08-03', '2012-10-26', 4, 1);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Chark', 'Kathye', '1971-11-23', '2015-06-01', 4, 1);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Purver', 'Leigh', '1976-04-23', '2017-09-12', 22, 2);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Crosetti', 'Florian', '1986-04-02', '2019-12-10', 25, 2);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Goscar', 'Tabitha', '1986-01-15', '2015-06-01', 20, 7);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('McManus', 'Paolina', '1987-01-19', '2021-02-14', 14, 5);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Arr', 'Jeremias', '1971-01-20', '2013-05-15', 9, 1);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Jandera', 'Kally', '1970-04-05', '2012-03-31', 2, 5);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Radin', 'Gael', '1976-05-06', '2017-01-01', 30, 1);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('MacKnight', 'Martin', '1986-04-28', '2013-02-16', 5, 4);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('McWilliams', 'Owen', '1982-11-10', '2022-07-28', 18, 5);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Greedy', 'Cymbre', '1973-06-22', '2015-05-31', 23, 1);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Blogg', 'Julieta', '1977-10-22', '2011-03-05', 2, 4);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Medford', 'Brock', '1970-03-29', '2024-10-31', 2, 4);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Rawe', 'Susannah', '1973-01-07', '2024-07-06', 4, 2);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('McDugal', 'Cori', '1973-05-30', '2023-08-04', 12, 3);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Deschelle', 'Deerdre', '1975-10-02', '2021-04-24', 23, 4);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Ledamun', 'Gwendolen', '1972-01-19', '2012-07-02', 5, 6);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Bodill', 'Debi', '1976-08-21', '2011-05-13', 25, 1);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Gammage', 'Kippy', '1988-07-09', '2015-06-21', 10, 5);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Vequaud', 'Roldan', '1988-08-23', '2018-02-02', 12, 4);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Lebarree', 'Mina', '1973-11-24', '2022-07-20', 10, 4);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Wearing', 'Carree', '1972-01-19', '2017-05-05', 17, 6);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Crannach', 'Mal', '1987-05-14', '2020-12-14', 2, 3);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Enrietto', 'Abba', '1977-10-06', '2024-12-17', 18, 3);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Claremont', 'Ricard', '1970-10-25', '2020-11-29', 16, 1);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Girardez', 'Mort', '1970-05-07', '2019-12-21', 1, 4);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Lampkin', 'Townsend', '1981-12-15', '2022-04-30', 24, 3);



CREATE TABLE Fehlzeit (
      MA_ID INTEGER,
      Von_Datum DATE,
      Bis_Datum DATE,
      Grund_ID INTEGER,
      Fehltage INTEGER,
      FOREIGN KEY (MA_ID) REFERENCES Mitarbeiter(MA_ID),
      FOREIGN KEY (Grund_ID) REFERENCES Fehlzeitgrund(Grund_ID)
);





























