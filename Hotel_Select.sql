/*
Pawe� Troja�ski, 13335

Tworzenie bazy danych hotelu (Stan na dzie� 28.01.2021)

3 plik - SELECT
*/

--U�ycie bazy Hotel
USE Hotel;

--Wykaz wolnych pokoi
SELECT Nr_Pokoju, Stan FROM Pokoj WHERE Stan LIKE 'W%';
--SELECT pok.Nr_Pokoju, pok.Stan FROM Pokoj pok LEFT OUTER JOIN Pobyt pob ON(pok.ID = pob.PokojID) WHERE DATEDIFF(DAY, pob.Data_Wyjazdu, GETDATE()) >= 0 AND pob.PokojID IS NULL;

--Kto, gdzie nocowa� i ile zap�aci� w ostatnim tygodniu
SELECT g.Imie, g.Nazwisko, pok.Nr_Pokoju, (DATEDIFF(DAY, pob.Data_Przyjazdu, pob.Data_Wyjazdu) * pok.Koszt) + pak.Koszt AS Naleznosc FROM Gosc g INNER JOIN Pobyt pob ON(g.ID = pob.GoscID) 
INNER JOIN Pakiet pak ON(pob.PakietID = pak.ID) INNER JOIN Pokoj pok ON(pob.PokojID = pok.ID) WHERE DATEDIFF(DAY, pob.Data_Wyjazdu, GETDATE()) <= 7 ORDER BY Nazwisko ASC;

--W kt�rym pokoju nikt nigdy nie nocowa�
SELECT pok.Nr_Pokoju FROM Pokoj pok LEFT OUTER JOIN Pobyt pob ON(pok.ID = pob.PokojID) WHERE pok.Stan LIKE 'W%' AND pob.PokojID IS NULL;