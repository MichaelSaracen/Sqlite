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

insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Hickinbottom', 'Violetta', '8/14/1986', '9/29/2020', 8, 5);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Aldridge', 'Yale', '9/6/1976', '12/28/2024', 14, 2);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Listone', 'Orson', '8/16/1976', '8/7/2018', 26, 4);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Westwater', 'Klaus', '4/12/1979', '12/12/2017', 12, 5);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Lowrie', 'Lilias', '1/23/1988', '8/19/2023', 2, 2);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Grigoryev', 'Alexandre', '3/1/1978', '1/15/2020', 28, 4);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Dust', 'Fletcher', '7/28/1972', '2/27/2017', 18, 5);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Gantzer', 'Emmye', '9/6/1975', '7/27/2012', 25, 2);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Livesey', 'Rafe', '7/21/1988', '11/25/2012', 26, 6);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Milsom', 'L;urette', '8/20/1973', '5/13/2023', 17, 5);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Darwood', 'Sile', '5/25/1979', '3/7/2024', 20, 5);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Bardell', 'Ali', '9/17/1976', '5/4/2013', 6, 5);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Zanazzi', 'Holmes', '11/5/1981', '5/21/2015', 24, 5);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Denk', 'Sidnee', '7/17/1973', '12/29/2017', 3, 6);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Attew', 'Lanni', '5/25/1987', '8/31/2022', 19, 7);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Hinks', 'Ivie', '6/10/1975', '12/20/2012', 9, 3);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Dowears', 'Windham', '6/3/1977', '12/26/2018', 29, 3);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Darlow', 'Edmund', '12/13/1979', '10/16/2013', 28, 3);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Blewitt', 'Alexine', '10/13/1979', '6/13/2015', 13, 5);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Haberfield', 'Shawna', '8/28/1983', '8/9/2018', 13, 7);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Piburn', 'Clemence', '6/15/1978', '6/19/2024', 27, 7);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Pere', 'Mattie', '5/1/1985', '7/23/2019', 29, 1);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Spadeck', 'Blanche', '12/27/1985', '10/11/2014', 1, 6);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Delieu', 'Elisha', '11/30/1984', '10/28/2013', 24, 4);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Sooley', 'Cairistiona', '9/22/1985', '2/6/2021', 5, 6);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Cantillion', 'Angel', '3/29/1981', '1/17/2018', 25, 5);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Isgar', 'Corny', '6/15/1989', '2/5/2013', 21, 4);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Togwell', 'Wynny', '1/2/1990', '11/4/2017', 28, 6);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Milius', 'Josy', '9/13/1989', '2/7/2013', 20, 6);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Bearman', 'Cristine', '6/11/1984', '7/31/2015', 23, 5);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Tschirasche', 'Dania', '12/29/1971', '12/6/2018', 11, 3);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('McLeary', 'Ripley', '10/20/1986', '1/15/2019', 11, 6);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Blainey', 'Sybila', '2/19/1977', '4/1/2013', 22, 7);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Edmonstone', 'Elinore', '6/13/1988', '9/7/2015', 12, 3);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('McCart', 'Harper', '6/19/1982', '4/12/2013', 18, 6);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Eveleigh', 'Hadley', '3/9/1973', '12/10/2018', 26, 7);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Critcher', 'Tanney', '6/20/1978', '4/2/2014', 11, 3);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Knill', 'Alvy', '7/12/1980', '6/9/2017', 23, 2);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Vickers', 'Darcee', '9/7/1972', '11/18/2012', 18, 1);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Murrill', 'Bryan', '12/23/1971', '4/12/2021', 28, 6);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Ambrosch', 'Kelsey', '1/16/1980', '2/21/2018', 8, 6);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Harse', 'Nance', '11/27/1989', '12/9/2016', 27, 1);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Densumbe', 'Corry', '10/17/1986', '1/28/2019', 4, 4);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Hanley', 'Johny', '11/1/1987', '10/22/2022', 6, 5);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Lincke', 'Violet', '10/5/1980', '2/26/2012', 22, 1);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Merton', 'Felipe', '5/6/1971', '12/19/2016', 2, 3);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Jasper', 'Jess', '8/14/1977', '6/15/2015', 23, 2);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Gwyther', 'Keary', '12/14/1970', '8/6/2021', 4, 7);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Satyford', 'Adriano', '12/1/1984', '7/15/2010', 16, 1);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Cassidy', 'Eartha', '10/29/1982', '7/9/2014', 18, 7);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Dewen', 'Con', '10/5/1982', '5/18/2015', 3, 1);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Fearenside', 'Riccardo', '1/30/1986', '9/8/2022', 30, 4);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Gilhouley', 'Avram', '5/12/1981', '1/16/2016', 13, 5);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Greenside', 'Averil', '11/10/1980', '4/5/2012', 7, 3);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Izac', 'Flinn', '11/27/1977', '3/20/2012', 16, 6);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Iwanicki', 'Vincenz', '11/12/1970', '3/4/2018', 8, 7);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Elsmore', 'Stormi', '11/21/1981', '4/30/2014', 27, 4);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Whatsize', 'Howie', '3/5/1980', '8/19/2023', 21, 1);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Perks', 'Bartholomeo', '12/5/1981', '9/16/2010', 2, 4);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Ibanez', 'Tybi', '9/10/1974', '12/8/2019', 11, 4);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Jakeman', 'Berne', '10/14/1980', '12/29/2011', 17, 5);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Alessandrelli', 'Willy', '6/13/1973', '7/22/2021', 8, 7);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Killingback', 'Eunice', '3/11/1984', '8/17/2024', 2, 6);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Limb', 'Wendy', '10/11/1982', '5/15/2018', 10, 6);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Tidbald', 'Caesar', '4/11/1974', '8/17/2010', 26, 5);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Herley', 'Allianora', '3/1/1984', '4/18/2019', 11, 5);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Akhurst', 'Mollee', '11/8/1984', '4/21/2011', 5, 2);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Evison', 'Coralie', '9/4/1987', '8/22/2023', 24, 7);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Bowsher', 'Chauncey', '6/14/1974', '10/28/2024', 10, 3);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Fallens', 'Beatriz', '3/29/1973', '11/13/2012', 30, 4);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Heustice', 'Baillie', '10/7/1976', '2/22/2014', 12, 4);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Arney', 'Feodor', '10/2/1970', '6/8/2015', 12, 7);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('O''Looney', 'Katharine', '2/25/1975', '2/23/2017', 16, 7);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Spering', 'Linoel', '10/9/1983', '5/7/2017', 11, 3);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Richichi', 'Hugo', '10/31/1988', '3/3/2015', 29, 1);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Impson', 'Siusan', '9/16/1985', '3/21/2012', 27, 3);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Velez', 'Kerianne', '7/26/1977', '3/19/2014', 19, 6);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Brusin', 'Florina', '10/9/1984', '1/17/2015', 15, 7);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Laverock', 'Alric', '6/22/1983', '9/26/2014', 30, 3);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Tryme', 'Virgie', '3/10/1974', '12/18/2012', 1, 4);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Delacote', 'Ode', '12/13/1978', '8/19/2023', 15, 2);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Laughlan', 'Aksel', '6/6/1972', '11/4/2020', 24, 7);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Starkings', 'Cassaundra', '12/25/1972', '1/20/2020', 11, 4);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Vasyatkin', 'Janetta', '12/17/1985', '12/26/2024', 6, 6);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Beynkn', 'Nolana', '8/1/1976', '11/21/2016', 7, 6);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Hinckes', 'Lamar', '1/22/1982', '8/9/2022', 10, 3);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Crosio', 'Seline', '8/3/1984', '7/13/2017', 11, 6);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Vellender', 'Else', '10/24/1979', '11/28/2012', 13, 3);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Poletto', 'Ilsa', '10/6/1984', '9/7/2014', 21, 2);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Cove', 'Ninette', '6/24/1987', '10/23/2020', 23, 6);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Quinell', 'Anestassia', '2/25/1973', '3/11/2010', 23, 4);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Drinan', 'Flin', '8/10/1971', '4/13/2022', 26, 2);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Burleigh', 'Gearard', '4/14/1971', '9/20/2023', 17, 3);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Doberer', 'Gardner', '9/19/1987', '5/24/2018', 21, 2);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Baxill', 'Bendicty', '7/29/1973', '3/14/2015', 21, 1);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Lillyman', 'Cheri', '3/2/1975', '9/27/2024', 10, 6);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Petrushkevich', 'Iona', '8/30/1987', '1/23/2011', 6, 2);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Teas', 'Abbie', '8/21/1985', '3/20/2013', 24, 1);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Laskey', 'Cassondra', '3/30/1974', '6/4/2018', 17, 5);
insert into Mitarbeiter (Nachname, Vorname, Geburtsdatum, Eintrittsdatum, ORT_ID, A_ID) values ('Byres', 'Welsh', '5/17/1973', '3/8/2017', 21, 3);



CREATE TABLE Fehlzeit (
      MA_ID INTEGER,
      Von_Datum DATE,
      Bis_Datum DATE,
      Grund_ID INTEGER,
      Fehltage INTEGER,
      FOREIGN KEY (MA_ID) REFERENCES Mitarbeiter(MA_ID),
      FOREIGN KEY (Grund_ID) REFERENCES Fehlzeitgrund(Grund_ID)
);





























