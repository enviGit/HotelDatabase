/*
Pawe� Troja�ski, 13335

Tworzenie bazy danych hotelu (Stan na dzie� 28.01.2021)

1 plik - CREATE
*/

--U�ycie bazy master
USE master;

--Stworzenie bazy Hotel
CREATE DATABASE Hotel;

--U�ycie bazy Hotel
USE Hotel;

--Stworzenie tabeli Go��
CREATE TABLE Gosc(ID INT CONSTRAINT PK1 PRIMARY KEY IDENTITY(1, 1), Imie NVARCHAR(15) NOT NULL, Nazwisko NVARCHAR(30) NOT NULL, Adres_Zamieszkania NVARCHAR(50) NOT NULL, 
Kod_Pocztowy NCHAR(6) CONSTRAINT Ch_Kod CHECK(Kod_Pocztowy LIKE '[0-9][0-9]-[0-9][0-9][0-9]') NOT NULL, PESEL NCHAR(11) CONSTRAINT U_PESEL UNIQUE NOT NULL, Telefon NVARCHAR(20) NOT NULL, 
Email NVARCHAR(50) CONSTRAINT Ch_Mail CHECK(Email LIKE '%@%'), Nr_Rejestracyjny_Pojazdu NVARCHAR(10));

--Stworzenie tabeli Pok�j
CREATE TABLE Pokoj(ID INT CONSTRAINT PK2 PRIMARY KEY IDENTITY(1, 1), Nr_Pokoju SMALLINT NOT NULL, Iloosobowy SMALLINT DEFAULT 1, Koszt SMALLMONEY NOT NULL,
Stan NVARCHAR(6) CONSTRAINT Ch_Stan CHECK(Stan LIKE '[WZ]%') NOT NULL);

--Stworzenie tabeli Usluga
CREATE TABLE Usluga(ID INT CONSTRAINT PK3 PRIMARY KEY IDENTITY(1, 1), Basen BIT DEFAULT 0, Depozyt BIT DEFAULT 0, Parking BIT DEFAULT 0, Sauna BIT DEFAULT 0, Sniadanie BIT DEFAULT 0);

--Stworzenie tabeli Pakiet
CREATE TABLE Pakiet(ID INT CONSTRAINT PK4 PRIMARY KEY IDENTITY(1, 1), UslugaID INT CONSTRAINT FK1 UNIQUE FOREIGN KEY REFERENCES Usluga(ID) NOT NULL, Nazwa NVARCHAR(50) NOT NULL, 
Koszt SMALLMONEY NOT NULL);

--Stworzenie tabeli Pobyt
CREATE TABLE Pobyt(ID INT CONSTRAINT PK5 PRIMARY KEY IDENTITY(1, 1), GoscID INT CONSTRAINT FK2 FOREIGN KEY REFERENCES Gosc(ID) NOT NULL, 
PokojID INT CONSTRAINT FK3 FOREIGN KEY REFERENCES Pokoj(ID) NOT NULL, PakietID INT CONSTRAINT FK4 FOREIGN KEY REFERENCES Pakiet(ID), 
Data_Przyjazdu DATE CONSTRAINT Ch_Data_P CHECK(Data_Przyjazdu <= getDate()) NOT NULL, Data_Wyjazdu DATE, Ilosc_Dob SMALLINT DEFAULT 1 CONSTRAINT Ch_IloscDob CHECK(Ilosc_Dob >= 1) NOT NULL, 
Naleznosc MONEY NOT NULL, CONSTRAINT Ch_Data CHECK(Data_Przyjazdu <= Data_Wyjazdu));
/* 
	Brak mo�liwo�ci rezerwacji			CONSTRAINT Ch_Data_P CHECK(Data_Przyjazdu <= getDate()) 
	Ilo�� d�b							DATEDIFF(DAY, Data_Przyjazdu, Data_Wyjazdu)
*/