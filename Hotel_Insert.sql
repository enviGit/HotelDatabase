/*
Pawe� Troja�ski, 13335

Tworzenie bazy danych hotelu (Stan na dzie� 28.01.2021)

2 plik - INSERT
*/

--U�ycie bazy Hotel
USE Hotel;

--Dodanie rekord�w do tabeli Go��
INSERT INTO Gosc(Imie, Nazwisko, Adres_Zamieszkania, Kod_Pocztowy, PESEL, Telefon, Email, Nr_Rejestracyjny_Pojazdu)
VALUES('Jan', 'Kowalski', 'Jana Pawła II 50', '00-185', '99010802137', '505666505', 'jankowalski@gmail.com', 'W1 REJES');
INSERT INTO Gosc(Imie, Nazwisko, Adres_Zamieszkania, Kod_Pocztowy, PESEL, Telefon, Email)
VALUES('Jakub', 'Nowak', 'Władysława Beliny-Prażmowskiego 60', '31-517', '97042203148', '666585447', 'kubanowak@gmail.com');
INSERT INTO Gosc(Imie, Nazwisko, Adres_Zamieszkania, Kod_Pocztowy, PESEL, Telefon, Email)
VALUES('Stefan', 'Zbigniew', 'Dziekuć-Maleja Łukasza 2', '80-156', '84022102559', '505666505', 'stefanzbysiu@gmail.com');
INSERT INTO Gosc(Imie, Nazwisko, Adres_Zamieszkania, Kod_Pocztowy, PESEL, Telefon, Email, Nr_Rejestracyjny_Pojazdu)
VALUES('Wiktor', 'Bożydar', 'Górecka 62', '61-483', '37111617339', '505835489', 'wikibozydar@gmail.com', 'PO 54238');
INSERT INTO Gosc(Imie, Nazwisko, Adres_Zamieszkania, Kod_Pocztowy, PESEL, Telefon, Email)
VALUES('Ilona', 'Spleśniała', 'Bojowników Getta Warszawskiego 20', '91-438', '64102199747', '534470778', 'ilonkaaa@gmail.com');
INSERT INTO Gosc(Imie, Nazwisko, Adres_Zamieszkania, Kod_Pocztowy, PESEL, Telefon, Email)
VALUES('Krzysztof', 'Wyczesany', 'Marzanny 137', '30-828', '75092702334', '601735601', 'wyczesanyb@gmail.com');
INSERT INTO Gosc(Imie, Nazwisko, Adres_Zamieszkania, Kod_Pocztowy, PESEL, Telefon, Email)
VALUES('Bogdan', 'Gamoń', 'Syreny 95', '01-145', '46032540037', '532461700', 'bogusgamon@gmail.com');
INSERT INTO Gosc(Imie, Nazwisko, Adres_Zamieszkania, Kod_Pocztowy, PESEL, Telefon, Email, Nr_Rejestracyjny_Pojazdu)
VALUES('Zbigniew', 'Grzywacz', 'Niepodległości 2', '70-412', '56090733014', '698493280', 'zbysiugrzywacz@gmail.com', 'ZZ 19275');
INSERT INTO Gosc(Imie, Nazwisko, Adres_Zamieszkania, Kod_Pocztowy, PESEL, Telefon, Email)
VALUES('Stanisław', 'Ulanda', 'Gwiazd 11', '41-500', '49052019257', '511820691', 'ulandastanis@gmail.com');
INSERT INTO Gosc(Imie, Nazwisko, Adres_Zamieszkania, Kod_Pocztowy, PESEL, Telefon, Email, Nr_Rejestracyjny_Pojazdu)
VALUES('Filip', 'Baran', 'Budziszyńska 74', '70-022', '82010862195', '723091319', 'filipbaran666@gmail.com', 'ZS 0847V');

--Dodanie rekord�w do tabeli Pok�j
INSERT INTO Pokoj VALUES(101, 1, 200, 'W');
INSERT INTO Pokoj VALUES(102, 2, 275, 'W');
INSERT INTO Pokoj VALUES(103, 1, 200, 'Z');
INSERT INTO Pokoj VALUES(201, 1, 200, 'W');
INSERT INTO Pokoj VALUES(202, 1, 200, 'W');
INSERT INTO Pokoj VALUES(203, 2, 275, 'Z');
INSERT INTO Pokoj VALUES(301, 2, 275, 'Z');
INSERT INTO Pokoj VALUES(302, 3, 325, 'W');
INSERT INTO Pokoj VALUES(303, 1, 200, 'Z');
INSERT INTO Pokoj VALUES(401, 3, 325, 'W');

--Dodanie rekord�w do tabeli Us�uga
INSERT INTO Usluga VALUES(0, 0, 0, 0, 0);
INSERT INTO Usluga VALUES(0, 0, 1, 0, 0);
INSERT INTO Usluga VALUES(0, 0, 0, 0, 1);
INSERT INTO Usluga VALUES(0, 0, 1, 0, 1);
INSERT INTO Usluga VALUES(0, 1, 1, 0, 1);
INSERT INTO Usluga VALUES(1, 1, 1, 1, 1);

--Dodanie rekord�w do tabeli Pakiet
INSERT INTO Pakiet VALUES(1, 'Podstawowy', 0);
INSERT INTO Pakiet VALUES(2, 'Parking', 39.99);
INSERT INTO Pakiet VALUES(3, 'Śniadanie', 24.99);
INSERT INTO Pakiet VALUES(4, 'Parking i śniadanie', 54.99);
INSERT INTO Pakiet VALUES(5, 'Depozyt, parking i śniadanie', 59.99);
INSERT INTO Pakiet VALUES(6, 'Deluxe', 111.99);

--Dodanie rekord�w do tabeli Pobyt
INSERT INTO Pobyt VALUES(1, 9, 2, '2021-01-28', '2021-01-29', 1, 239.99);
INSERT INTO Pobyt VALUES(2, 1, 1, '2020-12-15', '2020-12-16', 1, 200);
INSERT INTO Pobyt VALUES(3, 5, 3, '2021-01-02', '2021-01-04', 2, 424.99);
INSERT INTO Pobyt VALUES(4, 7, 5, '2021-01-28', '2021-01-29', 1, 334.99);
INSERT INTO Pobyt VALUES(5, 6, 3, '2021-01-28', '2021-01-29', 1, 299.99);
INSERT INTO Pobyt VALUES(6, 4, 1, '2020-12-03', '2020-12-04', 1, 200);
INSERT INTO Pobyt VALUES(7, 4, 1, '2020-12-20', '2020-12-22', 2, 400);
INSERT INTO Pobyt VALUES(8, 2, 6, '2020-12-31', '2021-01-01', 1, 386.99);
INSERT INTO Pobyt VALUES(9, 4, 3, '2020-01-01', '2020-01-06', 5, 1024.99);
INSERT INTO Pobyt VALUES(10, 8, 6, '2021-01-08', '2021-01-11', 3, 1086.99);