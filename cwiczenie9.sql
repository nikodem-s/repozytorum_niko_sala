CREATE DATABASE tabela_stratygraficzna;

use tabela_stratygraficzna;

create schema geologia;

CREATE TABLE geologia.GeoEon(
	id_eon INT PRIMARY KEY,
	nazwa_eon VARCHAR(40)
);

CREATE TABLE geologia.GeoEra(
	id_era INT PRIMARY KEY,
	nazwa_era VARCHAR(40),
	id_eon INT
);

CREATE TABLE geologia.GeoOkres(
	id_okres INT PRIMARY KEY,
	nazwa_okres VARCHAR(40),
	id_era INT
);

CREATE TABLE geologia.GeoEpoka(
	id_epoka INT PRIMARY KEY,
	nazwa_epoka VARCHAR(40),
	id_okres INT
);

CREATE TABLE geologia.GeoPietro(
	id_pietro INT PRIMARY KEY,
	nazwa_pietro VARCHAR(40),
	id_epoka INT
);

ALTER TABLE geologia.GeoEra
ADD FOREIGN KEY(id_eon) REFERENCES geologia.GeoEon(id_eon);

ALTER TABLE geologia.GeoOkres
ADD FOREIGN KEY(id_era) REFERENCES geologia.GeoEra(id_era);
	
ALTER TABLE geologia.GeoEpoka
ADD FOREIGN KEY(id_okres) REFERENCES geologia.GeoOkres(id_okres);

ALTER TABLE geologia.GeoPietro
ADD FOREIGN KEY(id_epoka) REFERENCES geologia.GeoEpoka(id_epoka);

INSERT INTO geologia.GeoEon VALUES(1, 'Fanerozoik');
INSERT INTO geologia.GeoEra VALUES(1, 'Paleozoik',1);
INSERT INTO geologia.GeoEra VALUES(2, 'Mezozoik',1);
INSERT INTO geologia.GeoEra VALUES(3, 'Kenozoik',1);
INSERT INTO geologia.GeoOkres VALUES(1, 'Dewon',1);
INSERT INTO geologia.GeoOkres VALUES(2, 'Karbon',1);
INSERT INTO geologia.GeoOkres VALUES(3, 'Perm',1);
INSERT INTO geologia.GeoOkres VALUES(4, 'Trias',2);
INSERT INTO geologia.GeoOkres VALUES(5, 'Jura',2);
INSERT INTO geologia.GeoOkres VALUES(6, 'Kreda',2);
INSERT INTO geologia.GeoOkres VALUES(7, 'Palogen',3);
INSERT INTO geologia.GeoOkres VALUES(8, 'Neogen',3);
INSERT INTO geologia.GeoOkres VALUES(9, 'Czwartorzêd',3);
INSERT INTO geologia.GeoEpoka VALUES(1, 'Dolny', 1);
INSERT INTO geologia.GeoEpoka VALUES(2, 'Œrodkowy', 1);
INSERT INTO geologia.GeoEpoka VALUES(3, 'Górny', 1);
INSERT INTO geologia.GeoEpoka VALUES(4, 'Dolny', 2);
INSERT INTO geologia.GeoEpoka VALUES(5, 'Górny', 2);
INSERT INTO geologia.GeoEpoka VALUES(6, 'Dolny', 3);
INSERT INTO geologia.GeoEpoka VALUES(7, 'Górny', 3);
INSERT INTO geologia.GeoEpoka VALUES(8, 'Dolny', 4);
INSERT INTO geologia.GeoEpoka VALUES(9, 'Œrodkowy', 4);
INSERT INTO geologia.GeoEpoka VALUES(10, 'Górny', 4);
INSERT INTO geologia.GeoEpoka VALUES(11, 'Dolna', 5);
INSERT INTO geologia.GeoEpoka VALUES(12, 'Œrodkowa', 5);
INSERT INTO geologia.GeoEpoka VALUES(13, 'Górna', 5);
INSERT INTO geologia.GeoEpoka VALUES(14, 'Dolna', 6);
INSERT INTO geologia.GeoEpoka VALUES(15, 'Górna', 6);
INSERT INTO geologia.GeoEpoka VALUES(16, 'Paleocen', 7);
INSERT INTO geologia.GeoEpoka VALUES(17, 'Eocen', 7);
INSERT INTO geologia.GeoEpoka VALUES(18, 'Oligocen', 7);
INSERT INTO geologia.GeoEpoka VALUES(19, 'Miocen', 8);
INSERT INTO geologia.GeoEpoka VALUES(20, 'Pliocen', 8);
INSERT INTO geologia.GeoEpoka VALUES(21, 'Plejstocen', 9);
INSERT INTO geologia.GeoEpoka VALUES(22, 'Holocen', 9);
INSERT INTO geologia.GeoPietro VALUES(1, 'Lochkow',1)
INSERT INTO geologia.GeoPietro VALUES(2, 'Prag',1)
INSERT INTO geologia.GeoPietro VALUES(3, 'EMS',1)
INSERT INTO geologia.GeoPietro VALUES(4, 'Eifel',2)
INSERT INTO geologia.GeoPietro VALUES(5, '¯ywet',2)
INSERT INTO geologia.GeoPietro VALUES(6, 'Fran',3)
INSERT INTO geologia.GeoPietro VALUES(7, 'Famen',3)

INSERT INTO geologia.GeoPietro VALUES(8, 'Turniej',4)
INSERT INTO geologia.GeoPietro VALUES(9, 'Wizen',4)
INSERT INTO geologia.GeoPietro VALUES(10, 'Serpuchow',4)

INSERT INTO geologia.GeoPietro VALUES(11, 'Baszkir',5)
INSERT INTO geologia.GeoPietro VALUES(12, 'Moskow',5)
INSERT INTO geologia.GeoPietro VALUES(13, 'Kasimow',5)
INSERT INTO geologia.GeoPietro VALUES(14, 'G¿el',5)

INSERT INTO geologia.GeoPietro VALUES(15, 'Assel',6)
INSERT INTO geologia.GeoPietro VALUES(16, 'Sakmar',6)
INSERT INTO geologia.GeoPietro VALUES(17, 'Artyñsk',6)
INSERT INTO geologia.GeoPietro VALUES(18, 'Kungur',6)
INSERT INTO geologia.GeoPietro VALUES(19, 'Road',6)

INSERT INTO geologia.GeoPietro VALUES(20, 'Word',7)
INSERT INTO geologia.GeoPietro VALUES(21, 'Capitan',7)
INSERT INTO geologia.GeoPietro VALUES(22, 'Wucziaping',7)
INSERT INTO geologia.GeoPietro VALUES(23, 'Czangsing',7)

INSERT INTO geologia.GeoPietro VALUES(24, 'Ind',8)
INSERT INTO geologia.GeoPietro VALUES(25, 'Olenek',8)

INSERT INTO geologia.GeoPietro VALUES(26, 'Anizyk',9)
INSERT INTO geologia.GeoPietro VALUES(27, 'Ladyn',9)

INSERT INTO geologia.GeoPietro VALUES(28, 'Karnik',10)
INSERT INTO geologia.GeoPietro VALUES(29, 'Noryk',10)
INSERT INTO geologia.GeoPietro VALUES(30, 'Retyk',10)

INSERT INTO geologia.GeoPietro VALUES(31, 'Hetang',11)
INSERT INTO geologia.GeoPietro VALUES(32, 'Synemur',11)
INSERT INTO geologia.GeoPietro VALUES(33, 'Plienbach',11)
INSERT INTO geologia.GeoPietro VALUES(34, 'Toark',11)

INSERT INTO geologia.GeoPietro VALUES(35, 'Aalen',12)
INSERT INTO geologia.GeoPietro VALUES(36, 'Bajos',12)
INSERT INTO geologia.GeoPietro VALUES(37, 'Baton',12)
INSERT INTO geologia.GeoPietro VALUES(38, 'Kelowej',12)

INSERT INTO geologia.GeoPietro VALUES(39, 'Oksford',13)
INSERT INTO geologia.GeoPietro VALUES(40, 'Kimeryd',13)
INSERT INTO geologia.GeoPietro VALUES(41, 'Tyton',13)

INSERT INTO geologia.GeoPietro VALUES(42, 'Berias',14)
INSERT INTO geologia.GeoPietro VALUES(43, 'Walan¿yn',14)
INSERT INTO geologia.GeoPietro VALUES(44, 'Hoteryw',14)
INSERT INTO geologia.GeoPietro VALUES(45, 'Barrem',14)
INSERT INTO geologia.GeoPietro VALUES(46, 'Apt',14)
INSERT INTO geologia.GeoPietro VALUES(47, 'Alb',14)

INSERT INTO geologia.GeoPietro VALUES(48, 'Cenoman',15)
INSERT INTO geologia.GeoPietro VALUES(49, 'Turon',15)
INSERT INTO geologia.GeoPietro VALUES(50, 'Koniak',15)
INSERT INTO geologia.GeoPietro VALUES(51, 'Santon',15)
INSERT INTO geologia.GeoPietro VALUES(52, 'Kampan',15)
INSERT INTO geologia.GeoPietro VALUES(53, 'Mastrycht',15)

INSERT INTO geologia.GeoPietro VALUES(54, 'Dan',16)
INSERT INTO geologia.GeoPietro VALUES(55, 'Seland',16)
INSERT INTO geologia.GeoPietro VALUES(56, 'Tanet',16)

INSERT INTO geologia.GeoPietro VALUES(57, 'Ipres',17)
INSERT INTO geologia.GeoPietro VALUES(58, 'Lutet',17)
INSERT INTO geologia.GeoPietro VALUES(59, 'Barton',17)
INSERT INTO geologia.GeoPietro VALUES(60, 'Priabon',17)

INSERT INTO geologia.GeoPietro VALUES(61, 'Rupel',18)
INSERT INTO geologia.GeoPietro VALUES(62, 'Szat',18)

INSERT INTO geologia.GeoPietro VALUES(63, 'Akwitan',19)
INSERT INTO geologia.GeoPietro VALUES(64, 'Burdyga³',19)
INSERT INTO geologia.GeoPietro VALUES(65, 'Lang',19)
INSERT INTO geologia.GeoPietro VALUES(66, 'Serrewal',19)
INSERT INTO geologia.GeoPietro VALUES(67, 'Torton',19)
INSERT INTO geologia.GeoPietro VALUES(68, 'Messyn',19)

INSERT INTO geologia.GeoPietro VALUES(69, 'Zankl',20)
INSERT INTO geologia.GeoPietro VALUES(70, 'Piacent',20)
INSERT INTO geologia.GeoPietro VALUES(71, 'Gelas',20)

INSERT INTO geologia.GeoPietro VALUES(72, 'Dolny',21)
INSERT INTO geologia.GeoPietro VALUES(73, 'Œrodkowy',21)
INSERT INTO geologia.GeoPietro VALUES(74, 'Górny',21)

INSERT INTO geologia.GeoPietro VALUES(75, ' ',22)
--DELETE FROM geologia.GeoPietro WHERE id_pietro >= 65;
SELECT * FROM geologia.GeoEon
SELECT * FROM geologia.GeoEra
SELECT * FROM geologia.GeoOkres
SELECT * FROM geologia.GeoEpoka
SELECT * FROM geologia.GeoPietro
--SELECT * FROM geologia.GeoPietro WHERE id_pietro>=65 


SELECT id_pietro, nazwa_pietro, GeoEpoka.id_epoka,
nazwa_epoka, GeoOkres.id_okres, nazwa_okres, GeoEra.id_era, nazwa_era, GeoEon.id_eon, nazwa_eon
INTO geologia.GeoTabela FROM geologia.GeoPietro, geologia.GeoEpoka, geologia.GeoOkres, geologia.GeoEra, geologia.GeoEon 
WHERE GeoEon.id_eon = GeoEra.id_eon AND GeoEra.id_era = GeoOkres.id_era AND
GeoOkres.id_okres = GeoEpoka.id_okres AND GeoEpoka.id_epoka = GeoPietro.id_epoka;

ALTER TABLE geologia.GeoTabela
ADD PRIMARY KEY (id_pietro);



SELECT * FROM geologia.GeoTabela

CREATE TABLE geologia.Dziesiec(
cyfra INT,
bit INT
);

INSERT INTO geologia.Dziesiec VALUES(0,1);
INSERT INTO geologia.Dziesiec VALUES(1,1);
INSERT INTO geologia.Dziesiec VALUES(2,2);
INSERT INTO geologia.Dziesiec VALUES(3,2);
INSERT INTO geologia.Dziesiec VALUES(4,3);
INSERT INTO geologia.Dziesiec VALUES(5,3);
INSERT INTO geologia.Dziesiec VALUES(6,3);
INSERT INTO geologia.Dziesiec VALUES(7,3);
INSERT INTO geologia.Dziesiec VALUES(8,4);
INSERT INTO geologia.Dziesiec VALUES(9,4);

CREATE TABLE geologia.Milion(liczba int,cyfra int, bit int);
 INSERT INTO  geologia.Milion SELECT a1.cyfra +10* a2.cyfra +100*a3.cyfra + 1000*a4.cyfra + 10000*a5.cyfra + 100000*a6.cyfra AS liczba , a1.cyfra
 AS cyfra, a1.bit AS bit
 FROM geologia.Dziesiec a1, geologia.Dziesiec a2, geologia.Dziesiec a3, geologia.Dziesiec a4, geologia.Dziesiec a5, geologia.Dziesiec a6 ;
 SELECT * FROM geologia.Milion

SELECT * FROM geologia.Dziesiec
--zapytanie1:
SELECT GETDATE();
SELECT COUNT(*) FROM geologia.Milion INNER JOIN geologia.GeoTabela ON Milion.liczba%75 = GeoTabela.id_pietro;
SELECT GETDATE();
--zapytanie2:
SELECT GETDATE();
SELECT COUNT(*) FROM geologia.Milion INNER JOIN geologia.GeoPietro ON 
(geologia.Milion.liczba%75=GeoPietro.id_pietro)
JOIN geologia.GeoEpoka ON GeoPietro.id_epoka =GeoEpoka.id_epoka
JOIN geologia.GeoOkres ON GeoEpoka.id_okres = GeoOkres.id_okres
JOIN geologia.GeoEra ON GeoEra.id_era = GeoOkres.id_era
JOIN geologia.GeoEon ON GeoEon.id_eon = GeoEra.id_eon
SELECT GETDATE();
--zapytanie3:
SELECT GETDATE();
SELECT COUNT(*) FROM geologia.Milion WHERE Milion.liczba%75 = 
(SELECT id_pietro FROM geologia.GeoTabela WHERE Milion.liczba%75=id_pietro);SELECT GETDATE();--zapytanie4SELECT GETDATE();SELECT COUNT(*) FROM geologia.Milion WHERE Milion.liczba%75 IN
(SELECT GeoPietro.id_pietro FROM geologia.GeoPietro INNER JOIN geologia.GeoEpoka ON GeoPietro.id_epoka = GeoEpoka.id_epokaINNER JOIN geologia.GeoOkres ON GeoEpoka.id_okres = GeoOkres.id_okres
INNER JOIN geologia.GeoEra ON GeoEra.id_era = GeoOkres.id_era
INNER JOIN geologia.GeoEon ON GeoEon.id_eon = GeoEra.id_eon);SELECT GETDATE();

--tworzenie indeksów
CREATE INDEX indeks_liczba ON geologia.Milion(liczba);
CREATE INDEX indkes_eon ON geologia.GeoEon(id_eon);
CREATE INDEX indeks_epoka ON geologia.GeoEpoka(id_epoka, id_okres);
CREATE INDEX indeks_era ON geologia.GeoEra(id_era, id_eon);
CREATE INDEX indeks_okres ON geologia.GeoOkres(id_okres, id_era);
CREATE INDEX indeks_pietro ON geologia.GeoPietro(id_pietro, id_epoka);
CREATE INDEX indeks_geotabela ON geologia.GeoTabela(id_pietro, id_epoka, id_era, id_okres,id_eon);


