create database firma3;

use firma3;

create schema ksiegowosc;

create table ksiegowosc.pracownicy(
	id_pracownika INT PRIMARY KEY,
	imie VARCHAR(40) NOT NULL,
	nazwisko VARCHAR(40)NOT NULL,
	adres VARCHAR(40)NOT NULL,
	telefon VARCHAR(15) NOT NULL
);
create table ksiegowosc.godziny(
	id_godziny INT PRIMARY KEY,
	dataa DATE NOT NULL,
	liczba_godzin INT,
	id_pracownika INT NOT NULL
);
create table ksiegowosc.pensje(
	id_pensji INT PRIMARY KEY,
	stanowisko VARCHAR(30) NOT NULL,
	kwota MONEY NOT NULL,
);
create table ksiegowosc.premie(
	id_premii INT PRIMARY KEY,
	rodzaj VARCHAR(30),
	kwota INT NOT NULL
);
create table ksiegowosc.wynagrodzenia(
	id_wynagrodzenia INT PRIMARY KEY,
	daata DATE,
	id_pracownika INT REFERENCES ksiegowosc.pracownicy(id_pracownika),
	id_godziny INT REFERENCES ksiegowosc.godziny(id_godziny),
	id_pensji INT REFERENCES ksiegowosc.pensje(id_pensji),
	id_premii INT REFERENCES ksiegowosc.premie(id_premii),
);
--dodanie klucza obcego wzglêdem godzin
ALTER TABLE ksiegowosc.godziny
ADD FOREIGN KEY(id_pracownika) REFERENCES ksiegowosc.pracownicy(id_pracownika);

INSERT INTO ksiegowosc.pracownicy  values(1, 'Nikodem', 'Sala', 'Jaroszowice 167', '515102998');
INSERT INTO ksiegowosc.pracownicy values(2,'Andrzej','Kolasa','Jaroszowice 166','514235678');
INSERT INTO ksiegowosc.pracownicy values(3,'Maria','Kaleba','Barwa³d 123','765544123');
INSERT INTO ksiegowosc.pracownicy values(4,'Weronika','Suœlik','Rychwa³d 33','668563133');
INSERT INTO ksiegowosc.pracownicy values(5,'Rafa³','Haranek','D¹brówka 2','788233456');
INSERT INTO ksiegowosc.pracownicy values(6,'Kacper','Michalik','Œwinna porêba 34','567213124');
INSERT INTO ksiegowosc.pracownicy values(7,'Wiktoria','B³azen','Nowy S¹cz 233','765432567');
INSERT INTO ksiegowosc.pracownicy values(8,'El¿bieta','Michalik','Jaszczurowa 100','777223654')
INSERT INTO ksiegowosc.pracownicy values(9,'Sylwester','Matusiak','Kraków 33','877234564');
INSERT INTO ksiegowosc.pracownicy values(10,'Magdalena','Kozak','Zagórnik 45','667545897');
INSERT INTO ksiegowosc.pracownicy values(11,'Marcin','Najman','Zagórnik 45','664545857');
INSERT INTO ksiegowosc.pracownicy values(12,'Magda','Najman','Zagórnik 48','664547957');
INSERT INTO ksiegowosc.pracownicy values(13,'Magda','Gran','Zagórnik 48','664567957');

INSERT INTO ksiegowosc.godziny values(1,'2021-04-13',170,10);
INSERT INTO ksiegowosc.godziny values(2,'2021-04-13',160,9);
INSERT INTO ksiegowosc.godziny values(3,'2021-04-13',140,7);
INSERT INTO ksiegowosc.godziny values(4,'2021-04-13',126,6);
INSERT INTO ksiegowosc.godziny values(5,'2021-04-13',165,5);
INSERT INTO ksiegowosc.godziny values(6,'2021-04-13',167,4);
INSERT INTO ksiegowosc.godziny values(7,'2021-04-13',179,3);
INSERT INTO ksiegowosc.godziny values(8,'2021-04-13',120,1);
INSERT INTO ksiegowosc.godziny values(9,'2021-04-13',161,2);
INSERT INTO ksiegowosc.godziny values(10,'2021-04-13',160,8);
INSERT INTO ksiegowosc.godziny values(11,'2021-04-13',165,11);
INSERT INTO ksiegowosc.godziny values(12,'2021-04-13',169,12);
INSERT INTO ksiegowosc.godziny values(13,'2021-04-13',169,13);

INSERT INTO ksiegowosc.premie values(1,'zas³ugowa',350);
INSERT INTO ksiegowosc.premie values(2,'wydajnosc',300);
INSERT INTO ksiegowosc.premie values(3,'urodzinowa',500);
INSERT INTO ksiegowosc.premie values(4,'imieninowa',100);
INSERT INTO ksiegowosc.premie values(5,'lojalnoœæ',1000);
INSERT INTO ksiegowosc.premie values(6,'œwi¹teczna',500);
INSERT INTO ksiegowosc.premie values(7,'wakacyjna',250);
INSERT INTO ksiegowosc.premie values(8,'zdrowotna',500);
INSERT INTO ksiegowosc.premie values(9,'symboliczna',50);
INSERT INTO ksiegowosc.premie values(10,'emerytura',750);

INSERT INTO ksiegowosc.pensje values(1,'sprz¹taczka',2200);
INSERT INTO ksiegowosc.pensje values(2,'konserwator',2200);
INSERT INTO ksiegowosc.pensje values(3,'kierownik',4000);
INSERT INTO ksiegowosc.pensje values(4,'dyrektor',5000);
INSERT INTO ksiegowosc.pensje values(5,'magazynier',3000);
INSERT INTO ksiegowosc.pensje values(6,'planista',2500);
INSERT INTO ksiegowosc.pensje values(7,'informatyk',3500);
INSERT INTO ksiegowosc.pensje values(8,'t³umacz j.rosyjskiego',3000);
INSERT INTO ksiegowosc.pensje values(9,'pracownik produkcji',2200);
INSERT INTO ksiegowosc.pensje values(10,'elektryk',3500);


INSERT INTO ksiegowosc.wynagrodzenia values(1,'2021-04-13',1,1,1,3);
INSERT INTO ksiegowosc.wynagrodzenia values(2,'2021-04-13',2,2,2,4);
INSERT INTO ksiegowosc.wynagrodzenia values(3,'2021-04-13',3,3,3,10);
INSERT INTO ksiegowosc.wynagrodzenia values(4,'2021-04-13',4,4,4, NULL);
INSERT INTO ksiegowosc.wynagrodzenia values(5,'2021-04-13',5,5,5,5);
INSERT INTO ksiegowosc.wynagrodzenia values(6,'2021-04-13',6,6,6,NULL);
INSERT INTO ksiegowosc.wynagrodzenia values(7,'2021-04-13',7,7,7,6);
INSERT INTO ksiegowosc.wynagrodzenia values(8,'2021-04-13',8,8,8,9);
INSERT INTO ksiegowosc.wynagrodzenia values(9,'2021-04-13',9,9,9,NULL);
INSERT INTO ksiegowosc.wynagrodzenia values(10,'2021-04-13',10,10,10,6);
INSERT INTO ksiegowosc.wynagrodzenia values(11,'2021-04-13',11,11,7,6);
INSERT INTO ksiegowosc.wynagrodzenia values(12,'2021-04-13',12,12,7,NULL);
INSERT INTO ksiegowosc.wynagrodzenia( id_wynagrodzenia, daata, id_pracownika, id_godziny, id_pensji, id_premii) VALUES
(13,'2021-04-13',13,13,7,NULL);
SELECT * FROM ksiegowosc.pracownicy;
SELECT * FROM ksiegowosc.premie;
SELECT * FROM ksiegowosc.godziny;
SELECT * FROM ksiegowosc.pensje;
SELECT * FROM ksiegowosc.wynagrodzenia;

--Kwerendy

--a
SELECT id_pracownika,nazwisko FROM ksiegowosc.pracownicy;
--b
SELECT id_pracownika FROM ksiegowosc.wynagrodzenia, ksiegowosc.pensje WHERE wynagrodzenia.id_pensji = pensje.id_pensji
AND pensje.kwota  > 3000;
--c
SELECT pracownicy.id_pracownika,imie,nazwisko FROM ksiegowosc.pracownicy,ksiegowosc.wynagrodzenia,ksiegowosc.pensje
WHERE ksiegowosc.wynagrodzenia.id_pracownika = ksiegowosc.pracownicy.id_pracownika  
--AND ksiegowosc.premie.id_premii = ksiegowosc.wynagrodzenia.id_premii
AND  ksiegowosc.pensje.id_pensji= ksiegowosc.wynagrodzenia.id_pensji
AND wynagrodzenia.id_premii IS NULL 
AND pensje.kwota > 2200;
--d
SELECT imie,nazwisko FROM ksiegowosc.pracownicy WHERE imie LIKE 'K%'
--e
SELECT * FROM ksiegowosc.pracownicy WHERE nazwisko LIKE '%n%' AND imie LIKE '%a';
--f
SELECT imie,nazwisko,liczba_godzin-160 AS nadgodziny
FROM ksiegowosc.pracownicy JOIN ksiegowosc.godziny ON pracownicy.id_pracownika = godziny.id_pracownika
AND godziny.liczba_godzin > 160;
--g
SELECT imie,nazwisko,kwota AS wyp³ata FROM ksiegowosc.pracownicy, ksiegowosc.wynagrodzenia, ksiegowosc.pensje 
WHERE ksiegowosc.pensje.id_pensji = ksiegowosc.wynagrodzenia.id_pensji 
AND ksiegowosc.pracownicy.id_pracownika = ksiegowosc.wynagrodzenia.id_pracownika AND 1500 <= kwota AND kwota <= 3000;
--h
SELECT imie, nazwisko, liczba_godzin -160 AS nadgodziny, wynagrodzenia.id_premii
FROM ksiegowosc.pracownicy, ksiegowosc.godziny, ksiegowosc.wynagrodzenia
WHERE ksiegowosc.pracownicy.id_pracownika = ksiegowosc.godziny.id_pracownika
AND ksiegowosc.wynagrodzenia.id_godziny = ksiegowosc.godziny.id_godziny AND liczba_godzin > 160 AND id_premii IS NULL;
--i
SELECT imie, nazwisko,kwota FROM ksiegowosc.pracownicy,ksiegowosc.pensje,ksiegowosc.wynagrodzenia
WHERE ksiegowosc.pracownicy.id_pracownika = ksiegowosc.wynagrodzenia.id_pracownika
AND ksiegowosc.pensje.id_pensji = ksiegowosc.wynagrodzenia.id_pensji 
ORDER BY pensje.kwota desc;

--j
SELECT imie, nazwisko,premie.kwota as premia,pensje.kwota FROM ksiegowosc.pracownicy,ksiegowosc.pensje,ksiegowosc.wynagrodzenia,ksiegowosc.premie
WHERE ksiegowosc.pracownicy.id_pracownika = ksiegowosc.wynagrodzenia.id_pracownika
AND ksiegowosc.pensje.id_pensji = ksiegowosc.wynagrodzenia.id_pensji 
AND ksiegowosc.premie.id_premii = ksiegowosc.wynagrodzenia.id_premii
ORDER BY pensje.kwota desc, premie.kwota desc;
--k
SELECT pensje.stanowisko,COUNT(pensje.stanowisko) as 'liczba pracownikow' FROM ksiegowosc.pensje,ksiegowosc.wynagrodzenia
WHERE 
ksiegowosc.pensje.id_pensji=ksiegowosc.wynagrodzenia.id_pensji
GROUP BY stanowisko;
--l
SELECT MAX(kwota)AS MINIMALNA,AVG(kwota) AS ŒREDNIA,MAX(kwota) AS MAKSYMALNA FROM ksiegowosc.pensje,ksiegowosc.wynagrodzenia
WHERE ksiegowosc.wynagrodzenia.id_pensji = ksiegowosc.pensje.id_pensji AND
stanowisko = 'informatyk'
--m
SELECT SUM(kwota) AS suma FROM ksiegowosc.pensje;
--n
SELECT SUM(kwota) AS suma,COUNT(stanowisko) AS'liczba osob' FROM ksiegowosc.pensje,ksiegowosc.wynagrodzenia 
WHERE ksiegowosc.wynagrodzenia.id_pensji = ksiegowosc.pensje.id_pensji AND
pensje.stanowisko = 'informatyk'


--p
SELECT COUNT(wynagrodzenia.id_premii) as 'liczba premii',stanowisko FROM ksiegowosc.wynagrodzenia, ksiegowosc.pensje
WHERE wynagrodzenia.id_pensji = pensje.id_pensji
AND stanowisko = 'informatyk'
GROUP BY stanowisko; 

--s
--DELETE FROM ksiegowosc.wynagrodzenia,ksiegowosc.pensje WHERE ksiegowosc.pensje.id_pensji = ksiegowosc.wynagrodzenia.id_pensji 
--nie potrafie