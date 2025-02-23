
DROP TABLE IF EXISTS "Abteilung";
CREATE TABLE Abteilung (
	A_ID INTEGER,
	Name TEXT,
	PRIMARY KEY (A_ID AUTOINCREMENT)
);

DROP TABLE IF EXISTS "Fehlzeit";
CREATE TABLE Fehlzeit (
	MA_ID INTEGER,
	Von_Datum DATE,
	Bis_Datum DATE,
	Grund_ID INTEGER,
	Fehltage INTEGER,
	FOREIGN KEY (MA_ID) REFERENCES Mitarbeiter(MA_ID),
	FOREIGN KEY (Grund_ID) REFERENCES Fehlzeitgrund(Grund_ID)
);

DROP TABLE IF EXISTS "Fehlzeitgrund";
CREATE TABLE Fehlzeitgrund (
	Grund_ID INTEGER,
	Grund TEXT,
	PRIMARY KEY (Grund_ID AUTOINCREMENT)
);

DROP TABLE IF EXISTS "Mitarbeiter";
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

DROP TABLE IF EXISTS "Orte";
CREATE TABLE Orte (
	ORT_ID INTEGER PRIMARY KEY AUTOINCREMENT,
	Postleitzahl TEXT,
	Ort TEXT
);

INSERT INTO "Abteilung" ("A_ID","Name") VALUES (1,'Marketing');
INSERT INTO "Abteilung" ("A_ID","Name") VALUES (2,'IT-Security');
INSERT INTO "Abteilung" ("A_ID","Name") VALUES (3,'Consulting');
INSERT INTO "Abteilung" ("A_ID","Name") VALUES (4,'Vertrieb');
INSERT INTO "Abteilung" ("A_ID","Name") VALUES (5,'Lager');
INSERT INTO "Abteilung" ("A_ID","Name") VALUES (6,'Fuhrpark');
INSERT INTO "Abteilung" ("A_ID","Name") VALUES (7,'Management');
INSERT INTO "Fehlzeitgrund" ("Grund_ID","Grund") VALUES (1,'Urlaub');
INSERT INTO "Fehlzeitgrund" ("Grund_ID","Grund") VALUES (2,'Dienstreise');
INSERT INTO "Fehlzeitgrund" ("Grund_ID","Grund") VALUES (3,'Krank');
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (1,'Hickinbottom','Violetta','8/14/1986','9/29/2020',NULL,8,5);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (2,'Aldridge','Yale','9/6/1976','12/28/2024',NULL,14,2);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (3,'Listone','Orson','8/16/1976','8/7/2018',NULL,26,4);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (4,'Westwater','Klaus','4/12/1979','12/12/2017',NULL,12,5);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (5,'Lowrie','Lilias','1/23/1988','8/19/2023',NULL,2,2);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (6,'Grigoryev','Alexandre','3/1/1978','1/15/2020',NULL,28,4);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (7,'Dust','Fletcher','7/28/1972','2/27/2017',NULL,18,5);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (8,'Gantzer','Emmye','9/6/1975','7/27/2012',NULL,25,2);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (9,'Livesey','Rafe','7/21/1988','11/25/2012',NULL,26,6);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (10,'Milsom','L;urette','8/20/1973','5/13/2023',NULL,17,5);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (11,'Darwood','Sile','5/25/1979','3/7/2024',NULL,20,5);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (12,'Bardell','Ali','9/17/1976','5/4/2013',NULL,6,5);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (13,'Zanazzi','Holmes','11/5/1981','5/21/2015',NULL,24,5);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (14,'Denk','Sidnee','7/17/1973','12/29/2017',NULL,3,6);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (15,'Attew','Lanni','5/25/1987','8/31/2022',NULL,19,7);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (16,'Hinks','Ivie','6/10/1975','12/20/2012',NULL,9,3);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (17,'Dowears','Windham','6/3/1977','12/26/2018',NULL,29,3);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (18,'Darlow','Edmund','12/13/1979','10/16/2013',NULL,28,3);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (19,'Blewitt','Alexine','10/13/1979','6/13/2015',NULL,13,5);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (20,'Haberfield','Shawna','8/28/1983','8/9/2018',NULL,13,7);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (21,'Piburn','Clemence','6/15/1978','6/19/2024',NULL,27,7);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (22,'Pere','Mattie','5/1/1985','7/23/2019',NULL,29,1);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (23,'Spadeck','Blanche','12/27/1985','10/11/2014',NULL,1,6);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (24,'Delieu','Elisha','11/30/1984','10/28/2013',NULL,24,4);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (25,'Sooley','Cairistiona','9/22/1985','2/6/2021',NULL,5,6);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (26,'Cantillion','Angel','3/29/1981','1/17/2018',NULL,25,5);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (27,'Isgar','Corny','6/15/1989','2/5/2013',NULL,21,4);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (28,'Togwell','Wynny','1/2/1990','11/4/2017',NULL,28,6);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (29,'Milius','Josy','9/13/1989','2/7/2013',NULL,20,6);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (30,'Bearman','Cristine','6/11/1984','7/31/2015',NULL,23,5);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (31,'Tschirasche','Dania','12/29/1971','12/6/2018',NULL,11,3);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (32,'McLeary','Ripley','10/20/1986','1/15/2019',NULL,11,6);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (33,'Blainey','Sybila','2/19/1977','4/1/2013',NULL,22,7);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (34,'Edmonstone','Elinore','6/13/1988','9/7/2015',NULL,12,3);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (35,'McCart','Harper','6/19/1982','4/12/2013',NULL,18,6);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (36,'Eveleigh','Hadley','3/9/1973','12/10/2018',NULL,26,7);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (37,'Critcher','Tanney','6/20/1978','4/2/2014',NULL,11,3);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (38,'Knill','Alvy','7/12/1980','6/9/2017',NULL,23,2);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (39,'Vickers','Darcee','9/7/1972','11/18/2012',NULL,18,1);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (40,'Murrill','Bryan','12/23/1971','4/12/2021',NULL,28,6);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (41,'Ambrosch','Kelsey','1/16/1980','2/21/2018',NULL,8,6);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (42,'Harse','Nance','11/27/1989','12/9/2016',NULL,27,1);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (43,'Densumbe','Corry','10/17/1986','1/28/2019',NULL,4,4);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (44,'Hanley','Johny','11/1/1987','10/22/2022',NULL,6,5);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (45,'Lincke','Violet','10/5/1980','2/26/2012',NULL,22,1);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (46,'Merton','Felipe','5/6/1971','12/19/2016',NULL,2,3);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (47,'Jasper','Jess','8/14/1977','6/15/2015',NULL,23,2);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (48,'Gwyther','Keary','12/14/1970','8/6/2021',NULL,4,7);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (49,'Satyford','Adriano','12/1/1984','7/15/2010',NULL,16,1);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (50,'Cassidy','Eartha','10/29/1982','7/9/2014',NULL,18,7);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (51,'Dewen','Con','10/5/1982','5/18/2015',NULL,3,1);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (52,'Fearenside','Riccardo','1/30/1986','9/8/2022',NULL,30,4);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (53,'Gilhouley','Avram','5/12/1981','1/16/2016',NULL,13,5);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (54,'Greenside','Averil','11/10/1980','4/5/2012',NULL,7,3);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (55,'Izac','Flinn','11/27/1977','3/20/2012',NULL,16,6);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (56,'Iwanicki','Vincenz','11/12/1970','3/4/2018',NULL,8,7);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (57,'Elsmore','Stormi','11/21/1981','4/30/2014',NULL,27,4);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (58,'Whatsize','Howie','3/5/1980','8/19/2023',NULL,21,1);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (59,'Perks','Bartholomeo','12/5/1981','9/16/2010',NULL,2,4);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (60,'Ibanez','Tybi','9/10/1974','12/8/2019',NULL,11,4);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (61,'Jakeman','Berne','10/14/1980','12/29/2011',NULL,17,5);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (62,'Alessandrelli','Willy','6/13/1973','7/22/2021',NULL,8,7);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (63,'Killingback','Eunice','3/11/1984','8/17/2024',NULL,2,6);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (64,'Limb','Wendy','10/11/1982','5/15/2018',NULL,10,6);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (65,'Tidbald','Caesar','4/11/1974','8/17/2010',NULL,26,5);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (66,'Herley','Allianora','3/1/1984','4/18/2019',NULL,11,5);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (67,'Akhurst','Mollee','11/8/1984','4/21/2011',NULL,5,2);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (68,'Evison','Coralie','9/4/1987','8/22/2023',NULL,24,7);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (69,'Bowsher','Chauncey','6/14/1974','10/28/2024',NULL,10,3);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (70,'Fallens','Beatriz','3/29/1973','11/13/2012',NULL,30,4);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (71,'Heustice','Baillie','10/7/1976','2/22/2014',NULL,12,4);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (72,'Arney','Feodor','10/2/1970','6/8/2015',NULL,12,7);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (73,'O''Looney','Katharine','2/25/1975','2/23/2017',NULL,16,7);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (74,'Spering','Linoel','10/9/1983','5/7/2017',NULL,11,3);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (75,'Richichi','Hugo','10/31/1988','3/3/2015',NULL,29,1);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (76,'Impson','Siusan','9/16/1985','3/21/2012',NULL,27,3);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (77,'Velez','Kerianne','7/26/1977','3/19/2014',NULL,19,6);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (78,'Brusin','Florina','10/9/1984','1/17/2015',NULL,15,7);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (79,'Laverock','Alric','6/22/1983','9/26/2014',NULL,30,3);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (80,'Tryme','Virgie','3/10/1974','12/18/2012',NULL,1,4);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (81,'Delacote','Ode','12/13/1978','8/19/2023',NULL,15,2);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (82,'Laughlan','Aksel','6/6/1972','11/4/2020',NULL,24,7);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (83,'Starkings','Cassaundra','12/25/1972','1/20/2020',NULL,11,4);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (84,'Vasyatkin','Janetta','12/17/1985','12/26/2024',NULL,6,6);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (85,'Beynkn','Nolana','8/1/1976','11/21/2016',NULL,7,6);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (86,'Hinckes','Lamar','1/22/1982','8/9/2022',NULL,10,3);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (87,'Crosio','Seline','8/3/1984','7/13/2017',NULL,11,6);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (88,'Vellender','Else','10/24/1979','11/28/2012',NULL,13,3);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (89,'Poletto','Ilsa','10/6/1984','9/7/2014',NULL,21,2);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (90,'Cove','Ninette','6/24/1987','10/23/2020',NULL,23,6);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (91,'Quinell','Anestassia','2/25/1973','3/11/2010',NULL,23,4);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (92,'Drinan','Flin','8/10/1971','4/13/2022',NULL,26,2);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (93,'Burleigh','Gearard','4/14/1971','9/20/2023',NULL,17,3);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (94,'Doberer','Gardner','9/19/1987','5/24/2018',NULL,21,2);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (95,'Baxill','Bendicty','7/29/1973','3/14/2015',NULL,21,1);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (96,'Lillyman','Cheri','3/2/1975','9/27/2024',NULL,10,6);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (97,'Petrushkevich','Iona','8/30/1987','1/23/2011',NULL,6,2);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (98,'Teas','Abbie','8/21/1985','3/20/2013',NULL,24,1);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (99,'Laskey','Cassondra','3/30/1974','6/4/2018',NULL,17,5);
INSERT INTO "Mitarbeiter" ("MA_ID","Nachname","Vorname","Geburtsdatum","Eintrittsdatum","Austrittsdatum","ORT_ID","A_ID") VALUES (100,'Byres','Welsh','5/17/1973','3/8/2017',NULL,21,3);
INSERT INTO "Orte" ("ORT_ID","Postleitzahl","Ort") VALUES (1,'40007','Otutara');
INSERT INTO "Orte" ("ORT_ID","Postleitzahl","Ort") VALUES (2,'18712','Togu');
INSERT INTO "Orte" ("ORT_ID","Postleitzahl","Ort") VALUES (3,'20063','Ikot-Ekpene');
INSERT INTO "Orte" ("ORT_ID","Postleitzahl","Ort") VALUES (4,'23311','Tongjiaxi');
INSERT INTO "Orte" ("ORT_ID","Postleitzahl","Ort") VALUES (5,'31132','Magog');
INSERT INTO "Orte" ("ORT_ID","Postleitzahl","Ort") VALUES (6,'13287','Inda Silasē');
INSERT INTO "Orte" ("ORT_ID","Postleitzahl","Ort") VALUES (7,'17656','Uren’');
INSERT INTO "Orte" ("ORT_ID","Postleitzahl","Ort") VALUES (8,'37761','Cruzeiro do Sul');
INSERT INTO "Orte" ("ORT_ID","Postleitzahl","Ort") VALUES (9,'90331','Changhao');
INSERT INTO "Orte" ("ORT_ID","Postleitzahl","Ort") VALUES (10,'52742','Salitrillos');
INSERT INTO "Orte" ("ORT_ID","Postleitzahl","Ort") VALUES (11,'51060','Eschweiler');
INSERT INTO "Orte" ("ORT_ID","Postleitzahl","Ort") VALUES (12,'42230','Torrevieja');
INSERT INTO "Orte" ("ORT_ID","Postleitzahl","Ort") VALUES (13,'29011','Mucuri');
INSERT INTO "Orte" ("ORT_ID","Postleitzahl","Ort") VALUES (14,'33042','Kassala');
INSERT INTO "Orte" ("ORT_ID","Postleitzahl","Ort") VALUES (15,'41741','Primorskiy');
INSERT INTO "Orte" ("ORT_ID","Postleitzahl","Ort") VALUES (16,'63193','San Nicolas');
INSERT INTO "Orte" ("ORT_ID","Postleitzahl","Ort") VALUES (17,'36536','Erdaohe');
INSERT INTO "Orte" ("ORT_ID","Postleitzahl","Ort") VALUES (18,'75650','Psygansu');
INSERT INTO "Orte" ("ORT_ID","Postleitzahl","Ort") VALUES (19,'22191','Jiayuguan');
INSERT INTO "Orte" ("ORT_ID","Postleitzahl","Ort") VALUES (20,'40627','Mojo');
INSERT INTO "Orte" ("ORT_ID","Postleitzahl","Ort") VALUES (21,'63308','Garko');
INSERT INTO "Orte" ("ORT_ID","Postleitzahl","Ort") VALUES (22,'91766','Zürich');
INSERT INTO "Orte" ("ORT_ID","Postleitzahl","Ort") VALUES (23,'53968','Chizhou');
INSERT INTO "Orte" ("ORT_ID","Postleitzahl","Ort") VALUES (24,'31469','Putinci');
INSERT INTO "Orte" ("ORT_ID","Postleitzahl","Ort") VALUES (25,'15482','Khrystynivka');
INSERT INTO "Orte" ("ORT_ID","Postleitzahl","Ort") VALUES (26,'80630','Ndewel');
INSERT INTO "Orte" ("ORT_ID","Postleitzahl","Ort") VALUES (27,'77178','Longfengshan');
INSERT INTO "Orte" ("ORT_ID","Postleitzahl","Ort") VALUES (28,'21987','Yulin');
INSERT INTO "Orte" ("ORT_ID","Postleitzahl","Ort") VALUES (29,'26801','Maswarah');
INSERT INTO "Orte" ("ORT_ID","Postleitzahl","Ort") VALUES (30,'59036','Żarki');

