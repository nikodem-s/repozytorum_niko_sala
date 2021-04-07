--1 utworzenie bazy danych
create database firma;

use firma; 
--utworzenie schematu
create schema rozliczenia;

--3 utworzenie tabel
create table rozliczenia.pracownicy(
	id_pracownika INT PRIMARY KEY,
	imie VARCHAR(40) NOT NULL,
	nazwisko VARCHAR(40)NOT NULL,
	adres VARCHAR(40)NOT NULL,
	telefon VARCHAR(15) NOT NULL
);
create table rozliczenia.godziny(
	id_godziny INT PRIMARY KEY,
	dataa DATE NOT NULL,
	liczba_godzin INT,
	id_pracownika INT NOT NULL
);
create table rozliczenia.pensje(
	id_pensji INT PRIMARY KEY,
	stanowisko VARCHAR(30) NOT NULL,
	kwota MONEY NOT NULL,
	id_premii INT NOT NULL,
);
create table rozliczenia.premie(
	id_premii INT PRIMARY KEY,
	rodzaj VARCHAR(30),
	kwota INT NOT NULL
);
--4 dodanie kluczy obcych
ALTER TABLE rozliczenia.pensje
ADD FOREIGN KEY (id_premii) REFERENCES rozliczenia.premie(id_premii);

ALTER TABLE rozliczenia.godziny
ADD FOREIGN KEY(id_pracownika) REFERENCES rozliczenia.pracownicy(id_pracownika);

--5 dodanie rekordow do bazy danych
INSERT INTO rozliczenia.pracownicy values(1, 'Nikodem', 'Sala', 'Jaroszowice 167', '515102998');
INSERT INTO rozliczenia.pracownicy values(2,'Andrzej','Kolasa','Jaroszowice 166','514235678');
INSERT INTO rozliczenia.pracownicy values(3,'Maria','Kaleba','Barwa³d 123','765544123');
INSERT INTO rozliczenia.pracownicy values(4,'Weronika','Suœlik','Rychwa³d 33','668563133');
INSERT INTO rozliczenia.pracownicy values(5,'Rafa³','Haranek','D¹brówka 2','788233456');
INSERT INTO rozliczenia.pracownicy values(6,'Kacper','Michalik','Œwinna porêba 34','567213124');
INSERT INTO rozliczenia.pracownicy values(7,'Wiktoria','B³azen','Nowy S¹cz 233','765432567');
INSERT INTO rozliczenia.pracownicy values(8,'El¿bieta','Michalik','Jaszczurowa 100','777223654')
INSERT INTO rozliczenia.pracownicy values(9,'Sylwester','Matusiak','Kraków 33','877234564');
INSERT INTO rozliczenia.pracownicy values(10,'Magdalena','Kozak','Zagórnik 45','667545897');

INSERT INTO rozliczenia.godziny values(1,'2021-04-13',10,10);
INSERT INTO rozliczenia.godziny values(2,'2021-04-13',8,9);
INSERT INTO rozliczenia.godziny values(3,'2021-04-13',12,7);
INSERT INTO rozliczenia.godziny values(4,'2021-04-13',8,6);
INSERT INTO rozliczenia.godziny values(5,'2021-04-13',8,5);
INSERT INTO rozliczenia.godziny values(6,'2021-04-13',8,4);
INSERT INTO rozliczenia.godziny values(7,'2021-04-13',8,3);
INSERT INTO rozliczenia.godziny values(8,'2021-04-13',10,1);
INSERT INTO rozliczenia.godziny values(9,'2021-04-13',10,2);
INSERT INTO rozliczenia.godziny values(10,'2021-04-13',6,8);

INSERT INTO rozliczenia.premie values(1,'brak',0);
INSERT INTO rozliczenia.premie values(2,'wydajnosc',300);
INSERT INTO rozliczenia.premie values(3,'urodzinowa',500);
INSERT INTO rozliczenia.premie values(4,'imieninowa',100);
INSERT INTO rozliczenia.premie values(5,'lojalnoœæ',1000);
INSERT INTO rozliczenia.premie values(6,'œwi¹teczna',500);
INSERT INTO rozliczenia.premie values(7,'wakacyjna',250);
INSERT INTO rozliczenia.premie values(8,'zdrowotna',500);
INSERT INTO rozliczenia.premie values(9,'symboliczna',50);
INSERT INTO rozliczenia.premie values(10,'emerytura',750);

INSERT INTO rozliczenia.pensje values(1,'sprz¹taczka',2200,1);
INSERT INTO rozliczenia.pensje values(2,'konserwator',2200,1);
INSERT INTO rozliczenia.pensje values(3,'kierownik',4000,1);
INSERT INTO rozliczenia.pensje values(4,'dyrektor',5000,1);
INSERT INTO rozliczenia.pensje values(5,'magazynier',3000,6);
INSERT INTO rozliczenia.pensje values(6,'planista',2500,2);
INSERT INTO rozliczenia.pensje values(7,'informatyk',3500,7);
INSERT INTO rozliczenia.pensje values(8,'t³umacz j.rosyjskiego',3000,5);
INSERT INTO rozliczenia.pensje values(9,'pracownik produkcji',2200,2);
INSERT INTO rozliczenia.pensje values(10,'elektryk',3500,1);
--6 wyswietlanie rekordow
SELECT * FROM rozliczenia.godziny;
SELECT * FROM rozliczenia.premie;
SELECT * FROM rozliczenia.pensje;
--7 kwerendy
--a
SELECT nazwisko,adres FROM rozliczenia.pracownicy;
--b
SELECT DATENAME(WEEKDAY, dataa) AS 'dzieñ tygodnia',DATEPART(MONTH,dataa) AS 'Miesi¹c' FROM rozliczenia.godziny;
--c
EXEC sp_rename 'rozliczenia.pensje.kwota','kwota_brutto','COLUMN';
ALTER TABLE rozliczenia.pensje ADD kwota_netto MONEY;

UPDATE rozliczenia.pensje SET kwota_netto = kwota_brutto * 0.81;
