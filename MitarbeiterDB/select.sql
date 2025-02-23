-- Alle Mitarbeiter abrufen
SELECT * FROM Mitarbeiter;

-- Nur bestimmte Spalten ausgeben
SELECT Vorname, Nachname, Geburtsdatum From Mitarbeiter;

-- DISTINCT – Doppelte Werte vermeiden
SELECT DISTINCT Vorname FROM Mitarbeiter;

-- Alle Mitarbeiter aus einer bestimmten Stadt abrufen
SELECT MA_ID, Nachname, Vorname, ORT_ID
FROM Mitarbeiter
WHERE ORT_ID = (SELECT ORT_ID FROM Orte WHERE Ort = 'Mojo');

-- Mitarbeiter anzeigen, die vor 1990 geboren wurden
SELECT Nachname, Vorname, Geburtsdatum
FROM Mitarbeiter
WHERE Geburtsdatum < '1980-01-01';

-- Mitarbeiter anzeigen, die vor 2020 eingetreten sind, aber noch da sind
SELECT Nachname, Vorname, Eintrittsdatum, Austrittsdatum
FROM Mitarbeiter
WHERE Eintrittsdatum < '21/12/2020' AND Austrittsdatum IS Null;

-- Mitarbeiter alphabetisch nach Nachname sortieren
SELECT Nachname, Vorname FROM Mitarbeiter ORDER BY Nachname ASC;

-- Mitarbeiter nach Eintrittsdatum sortieren (neueste zuerst)
SELECT Nachname, Vorname, Eintrittsdatum
FROM Mitarbeiter
ORDER BY Eintrittsdatum DESC;


-- Gruppierungen & Aggregatfunktionen (COUNT, SUM, AVG, MIN, MAX)
-- Anzahl der Mitarbeiter pro Abteilung
SELECT A_ID, COUNT(*) 
FROM Mitarbeiter
GROUP BY A_ID;

-- Wie viele Mitarbeiter wohnen in jeder Stadt?
SELECT O.Ort, COUNT(M.MA_ID) AS Anzahl_Mitarbeiter
FROM Orte O
LEFT JOIN Mitarbeiter M 
ON O.ORT_ID = M.ORT_ID
GROUP BY O.Ort
ORDER BY Anzahl_Mitarbeiter DESC;


-- Welche Abteilung hat den ältesten Mitarbeiter?
SELECT A.Name, M.Vorname, M.Nachname, MIN(M.Geburtsdatum) AS Oldest
FROM Mitarbeiter M
JOIN Abteilung A
ON A.A_ID = M.A_ID
GROUP BY A.Name;

-- Mitarbeiter mit ihrer Abteilung anzeigen
SELECT M.Vorname, M.Nachname, A.Name As Abteilung
FROM Mitarbeiter M
JOIN Abteilung A
ON M.A_ID = A.A_ID;

--  Mitarbeiter mit ihrer Stadt anzeigen
SELECT M.Vorname, M.Nachname, O.Ort, O.Postleitzahl
FROM Mitarbeiter M
JOIN Orte O
ON M.ORT_ID = O.ORT_ID;

-- Mitarbeiter mit Fehlzeiten anzeigen
SELECT M.Nachname, M.Vorname, F.Von_Datum, F.Bis_Datum, F.Fehltage
FROM Mitarbeiter M
JOIN Fehlzeit F
ON M.MA_ID = F.MA_ID;

-- Mitarbeiter mit den meisten Fehltagen anzeigen
SELECT M.Nachname, M.Vorname, SUM(F.Fehltage) AS GesamtFehltage
FROM Mitarbeiter M
JOIN Fehlzeit F
ON M.MA_ID = F.MA_ID
GROUP BY M.MA_ID
ORDER BY GesamtFehltage DESC;


-- Wie viele Fehltage hat jede Abteilung?
SELECT A.name AS Abteilung, SUM(F.Fehltage) AS Gesamt
From Mitarbeiter M
JOIN Abteilung A ON A.A_ID = M.A_ID
JOIN Fehlzeit F ON F.MA_ID = M.MA_ID
GROUP BY A.name
ORDER BY Gesamt DESC;

































