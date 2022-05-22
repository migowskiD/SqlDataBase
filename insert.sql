set dateformat dmy;

insert into Lotniska values
	('Port Lotniczy Gdañsk im. Lecha Wa³êsy', 'Polska'),
	('Lotnisko Chopina', 'Polska'),
	('Port lotniczy Londyn-Stansted', 'Anglia'),
	('Port lotniczy Sztokholm-Skavsta', 'Szwecja'),
	('Port lotniczy Los Angeles', 'Stany Zjednoczone'),
	('Port lotniczy San Diego', 'Stany Zjednoczone'),
	('Port lotniczy Berlin Brandenburg Willy Brandt', 'Niemcy'),
	('Port lotniczy Mediolan-Malpensa', 'W³ochy'),
	('Port lotniczy Rzym-Ciampino', 'W³ochy'),
	('Port lotniczy Pary¿-Roissy-Charles de Gaulle', 'Francja');

insert into Osoby values('SE0000001', 'Jan', 'Kowalski', 'Polska')
insert into Pasazerowie values('SE0000001', 'USA,ROS,')

insert into Osoby values('SE0000002', 'Jan', 'Bednarek', 'Polska')
insert into Pasazerowie values('SE0000002', '')

insert into Osoby values('SE0000003', 'Wojciech', 'Szczêsny', 'Polska')
insert into Pasazerowie values('SE0000003', 'USA,')

insert into Osoby values('SE0000004', 'Andrzej', 'Psikuta', 'Polska')
insert into Pasazerowie values('SE0000004', '')

insert into Osoby values('SE0000005', 'Jadwiga', 'Hymel', 'Ukraina')
insert into Pasazerowie values('SE0000005', 'POL,')

insert into Osoby values('SE0000006', 'Aaron', 'Ramsey', 'Walia')
insert into Pasazerowie values('SE0000006', '')

insert into Osoby values('SE0000007', 'Jack', 'Wilshere', 'Anglia')
insert into Pasazerowie values('SE0000007', 'egi,')

insert into Osoby values('SE0000008', 'Sergio', 'Ramos', 'Hiszpania')
insert into Pasazerowie values('SE0000008', '')

insert into Osoby values('SE0000009', 'Paul', 'Pogba', 'Francja')
insert into Pasazerowie values('SE0000009', 'AFG,')

insert into Osoby values('SE0000010', 'Antoni', 'Puchacz', 'Polska')
insert into Pasazerowie values('SE0000010', 'JEM,PAK,ZEA,CHI,')

insert into Osoby values('SE0000011', 'Mariusz', 'Stêpiñski', 'Polska')
insert into Pracownicy values('SE0000011', 'Pilot', '000000001', '80-150, Gdañsk, Kartuska 1', 'Port Lotniczy Gdañsk im. Lecha Wa³êsy')

insert into Osoby values('SE0000012', 'Arkadiusz', 'Milik', 'Polska')
insert into Pracownicy values('SE0000012', 'Pilot', '123456789', '80-150, Gdañsk, Kartuska 1', 'Port Lotniczy Gdañsk im. Lecha Wa³êsy')

insert into Osoby values('SE0000013', 'Piotr', 'Zielinski', 'Polska')
insert into Pracownicy values('SE0000013', 'Steward', '000000002', '80-150, Gdañsk, Kartuska 1', 'Port Lotniczy Gdañsk im. Lecha Wa³êsy')

insert into Osoby values('SE0000014', 'Piotr', 'Zielinski', 'Polska')
insert into Pracownicy values('SE0000014', 'Steward', '123456781', '80-150, Gdañsk, Kartuska 1','Port Lotniczy Gdañsk im. Lecha Wa³êsy')

insert into Osoby values('SE0000015', 'Micha³', 'Kucharczyk', 'Polska')
insert into Pracownicy values('SE0000015', 'Mechanik', '200000001', '80-150, Gdañsk, Kartuska 1', 'Port Lotniczy Gdañsk im. Lecha Wa³êsy')

insert into Osoby values('SE0000016', 'Janusz', 'Walczak', 'Polska')
insert into Pracownicy values('SE0000016', 'Mechanik', '500000001', '80-150, Gdañsk, Kartuska 1', 'Port Lotniczy Gdañsk im. Lecha Wa³êsy')

insert into Osoby values('SE0000017', 'Beata', 'Kozminski', 'Stany Zjednoczone')
insert into Pracownicy values('SE0000017', 'Steward', '133444555', '80-150, Gdañsk, Kartuska 1', 'Port Lotniczy Gdañsk im. Lecha Wa³êsy')

insert into Osoby values('SE0000018', 'Michael', 'Scott', 'Stany Zjednoczone')
insert into Pracownicy values('SE0000018', 'Pilot', '', '9925 Colonial Ave. Fountain Valley, CA 92708', 'Port lotniczy Los Angeles')

insert into Osoby values('SE0000019', 'Pam', 'Beesley', 'Stany Zjednoczone')
insert into Pracownicy values('SE0000019', 'Steward', '', '9925 Colonial Ave. Fountain Valley, CA 92722', 'Port lotniczy Los Angeles')

insert into Osoby values('SE0000020', 'Harry', 'Kane', 'Stany Zjednoczone')
insert into Pracownicy values('SE0000020', 'Steward', '', '2 Marsham Street Wellesley Road, London SW1P 4DF', 'Port lotniczy Londyn-Stansted')

insert into Osoby values('SE0000021', 'Adam', 'Spadam', 'Rosja')
insert into Pracownicy values('SE0000021', 'Steward', '', '40-123, Warszawa, Al. Jerozolimskie 1', 'Lotnisko Chopina')

insert into Urlopy values
	('Wypoczynkowy','08.03.2021', '28.03.2021', 'SE0000011'),
	('Wypoczynkowy','08.03.2021', '28.03.2021', 'SE0000012'),
	('Bezp³atny','15.08.2021', '25.08.2021', 'SE0000013'),
	('Szkoleniowy','17.08.2021', '19.08.2021', 'SE0000014'),
	('Szkoleniowy','17.08.2021', '19.08.2021', 'SE0000015'),
	('Szkoleniowy','17.08.2021', '19.08.2021', 'SE0000016'),
	('Szkoleniowy','17.08.2021', '19.08.2021', 'SE0000017'),
	('Szkoleniowy','17.08.2021', '19.08.2021', 'SE0000018'),
	('Szkoleniowy','17.08.2021', '19.08.2021', 'SE0000019'),
	('Szkoleniowy','17.08.2021', '19.08.2021', 'SE0000020');

insert into Bagaze values
	('11.28', '100000','SE0000001'),
	('14.28', '100020','SE0000001'),
	('11.28', '50000','SE0000003'),
	('11.19', '50000','SE0000004'),
	('11.15', '50000','SE0000005'),
	('21.28', '100000','SE0000006'),
	('17.28', '100000','SE0000007'),
	('19.28', '100000','SE0000008'),
	('22.28', '50000','SE0000009'),
	('15.11', '100000','SE0000008');

insert into Samoloty values
	('SP-LRA', 'Boeing 787', 'LOT'),
	('SP-LRB', 'Boeing 787', 'LOT'),
	('SP-LRC', 'Boeing 787', 'LOT'),
	('SP-LRD', 'Boeing 787', 'LOT'),
	('SP-LRE', 'Boeing 787', 'WIZZAIR'),
	('SP-LRF', 'Boeing 787', 'RYANAIR'),
	('SP-LRG', 'Boeing 787', 'RYANAIR'),
	('SP-LSA', 'Boeing 737', 'WIZZAIR'),
	('SP-LSB', 'Boeing 737', 'LOT'),
	('SP-LSC', 'Boeing 737', 'LOT');

insert into Lot values
	('01.12.2021 08:15', '01:15', '17', 'Odlot', 'Port lotniczy Londyn-Stansted', 'SP-LRA'),
	('02.12.2021 10:15', '01:15', '17', 'Przylot', 'Port lotniczy Londyn-Stansted','SP-LRA'),
	('03.12.2021 11:15', '01:15', '20', 'Odlot', 'Port lotniczy Londyn-Stansted','SP-LRB'),
	('04.12.2021 08:15', '01:15', '99', 'Przylot','Port lotniczy Londyn-Stansted', 'SP-LRC'),
	('05.12.2021 08:15', '02:15', '77', 'Odlot', 'Port lotniczy Sztokholm-Skavsta', 'SP-LRD'),
	('06.12.2021 08:15', '00:45', '21', 'Odlot', 'Port lotniczy Berlin Brandenburg Willy Brandt', 'SP-LRA'),
	('07.12.2021 08:15', '01:15', '22', 'Przylot', 'Port lotniczy Londyn-Stansted', 'SP-LRB'),
	('08.12.2021 08:15', '00:45', '19', 'Odlot','Port lotniczy Berlin Brandenburg Willy Brandt', 'SP-LRA'),
	('09.12.2021 08:15', '01:15', '19', 'Odlot', 'Port lotniczy Londyn-Stansted','SP-LRB'),
	('10.12.2021 08:15', '01:15', '19', 'Odlot', 'Port lotniczy Londyn-Stansted', 'SP-LRA'),
	('01.12.2021 08:15', '10:15', '50', 'Odlot', 'Port lotniczy Los Angeles', 'SP-LSA');

insert into Bilety values
	('Podstawowy','28F','SE0000008', (SELECT [Numer lotu] FROM Lot WHERE [Data] = '01.12.2021 08:15' and Nazwa='Port lotniczy Londyn-Stansted')),
	('Podstawowy','28A','SE0000007', (SELECT [Numer lotu] FROM Lot WHERE [Data] = '01.12.2021 08:15' and Nazwa='Port lotniczy Londyn-Stansted')),
	('Podstawowy','28B','SE0000006', (SELECT [Numer lotu] FROM Lot WHERE [Data] = '01.12.2021 08:15' and Nazwa='Port lotniczy Londyn-Stansted')),
	('Podstawowy','28C','SE0000005', (SELECT [Numer lotu] FROM Lot WHERE [Data] = '01.12.2021 08:15' and Nazwa='Port lotniczy Londyn-Stansted')),
	('Podstawowy','28D','SE0000004', (SELECT [Numer lotu] FROM Lot WHERE [Data] = '01.12.2021 08:15' and Nazwa='Port lotniczy Londyn-Stansted')),
	('Podstawowy','28E','SE0000003', (SELECT [Numer lotu] FROM Lot WHERE [Data] = '01.12.2021 08:15' and Nazwa='Port lotniczy Londyn-Stansted')),
	('Podstawowy','28F','SE0000002', (SELECT [Numer lotu] FROM Lot WHERE [Data] = '02.12.2021 10:15' and Nazwa='Port lotniczy Londyn-Stansted')),
	('Premium','28F','SE0000001', (SELECT [Numer lotu] FROM Lot WHERE [Data] = '03.12.2021 11:15' and Nazwa='Port lotniczy Londyn-Stansted')),
	('Premium','11A','SE0000001', (SELECT [Numer lotu] FROM Lot WHERE [Data] = '04.12.2021 08:15' and Nazwa='Port lotniczy Londyn-Stansted')),
	('Podstawowy','28F','SE0000001', (SELECT [Numer lotu] FROM Lot WHERE [Data] = '05.12.2021 08:15' and Nazwa='Port lotniczy Sztokholm-Skavsta')),
	('Podstawowy','01F','SE0000001', (SELECT [Numer lotu] FROM Lot WHERE [Data] = '01.12.2021 08:15' and Nazwa='Port lotniczy Los Angeles')),
	('Podstawowy','02B','SE0000003', (SELECT [Numer lotu] FROM Lot WHERE [Data] = '01.12.2021 08:15' and Nazwa='Port lotniczy Los Angeles')),
	('Podstawowy','21F','SE0000002', (SELECT [Numer lotu] FROM Lot WHERE [Data] = '01.12.2021 08:15' and Nazwa='Port lotniczy Los Angeles'));

insert into Przeglad values
	('A', '01.12.2021', '01.01.2022', 'SP-LRA'),
	('B', '01.12.2021', '01.03.2022', 'SP-LRA'),
	('A', '01.12.2021', '01.01.2022', 'SP-LRB'),
	('A', '01.12.2021', '01.01.2022', 'SP-LRC'),
	('A', '01.12.2021', '01.01.2022', 'SP-LRD'),
	('A', '01.12.2021', '01.01.2022', 'SP-LRE'),
	('A', '01.12.2021', '01.01.2022', 'SP-LRF'),
	('A', '01.12.2021', '01.01.2022', 'SP-LRG'),
	('B', '01.12.2021', '01.03.2022', 'SP-LRG'),
	('B', '01.12.2021', '01.03.2022', 'SP-LRB'),
	('B', '01.12.2021', '01.03.2022', 'SP-LSB'),
	('A', '01.12.2021', '01.01.2022', 'SP-LSB'),
	('B', '01.12.2021', '01.03.2022', 'SP-LSA'),
	('A', '01.12.2021', '01.01.2022', 'SP-LSA'),
	('C', '01.12.2021', '01.06.2022', 'SP-LSA');

insert into Wykonuje values
	((SELECT Id FROM Przeglad WHERE [Numer Samolotu] = 'SP-LRA' and [Data]= '01.12.2021' and Rodzaj='A'),'SE0000015'),
	((SELECT Id FROM Przeglad WHERE [Numer Samolotu] = 'SP-LRA' and [Data]= '01.12.2021' and Rodzaj='B'),'SE0000015'),
	((SELECT Id FROM Przeglad WHERE [Numer Samolotu] = 'SP-LRA' and [Data]= '01.12.2021' and Rodzaj='B'),'SE0000016'),
	((SELECT Id FROM Przeglad WHERE [Numer Samolotu] = 'SP-LRB' and [Data]= '01.12.2021' and Rodzaj='A'),'SE0000016'),
	((SELECT Id FROM Przeglad WHERE [Numer Samolotu] = 'SP-LRC' and [Data]= '01.12.2021' and Rodzaj='A'),'SE0000015'),
	((SELECT Id FROM Przeglad WHERE [Numer Samolotu] = 'SP-LRD' and [Data]= '01.12.2021' and Rodzaj='A'),'SE0000015'),
	((SELECT Id FROM Przeglad WHERE [Numer Samolotu] = 'SP-LRE' and [Data]= '01.12.2021' and Rodzaj='A'),'SE0000015'),
	((SELECT Id FROM Przeglad WHERE [Numer Samolotu] = 'SP-LRF' and [Data]= '01.12.2021' and Rodzaj='A'),'SE0000015'),
	((SELECT Id FROM Przeglad WHERE [Numer Samolotu] = 'SP-LRG' and [Data]= '01.12.2021' and Rodzaj='B'),'SE0000015'),
	((SELECT Id FROM Przeglad WHERE [Numer Samolotu] = 'SP-LRG' and [Data]= '01.12.2021' and Rodzaj='B'),'SE0000016');

insert into Pracuje_Podczas values
	((SELECT [Numer lotu] FROM Lot WHERE [Data] = '01.12.2021 08:15' and Nazwa='Port lotniczy Londyn-Stansted'),'SE0000011'),
	((SELECT [Numer lotu] FROM Lot WHERE [Data] = '02.12.2021 10:15' and Nazwa='Port lotniczy Londyn-Stansted'),'SE0000012'),
	((SELECT [Numer lotu] FROM Lot WHERE [Data] = '03.12.2021 11:15' and Nazwa='Port lotniczy Londyn-Stansted'),'SE0000013'),
	((SELECT [Numer lotu] FROM Lot WHERE [Data] = '04.12.2021 08:15' and Nazwa='Port lotniczy Londyn-Stansted'),'SE0000014'),
	((SELECT [Numer lotu] FROM Lot WHERE [Data] = '05.12.2021 08:15' and Nazwa='Port lotniczy Sztokholm-Skavsta'),'SE0000014'),
	((SELECT [Numer lotu] FROM Lot WHERE [Data] = '06.12.2021 08:15' and Nazwa='Port lotniczy Berlin Brandenburg Willy Brandt'),'SE0000011'),
	((SELECT [Numer lotu] FROM Lot WHERE [Data] = '07.12.2021 08:15' and Nazwa='Port lotniczy Londyn-Stansted'),'SE0000017'),
	((SELECT [Numer lotu] FROM Lot WHERE [Data] = '08.12.2021 08:15' and Nazwa='Port lotniczy Berlin Brandenburg Willy Brandt'),'SE0000018'),
	((SELECT [Numer lotu] FROM Lot WHERE [Data] = '09.12.2021 08:15' and Nazwa='Port lotniczy Londyn-Stansted'),'SE0000019'),
	((SELECT [Numer lotu] FROM Lot WHERE [Data] = '10.12.2021 08:15' and Nazwa='Port lotniczy Londyn-Stansted'),'SE0000020'),
	((SELECT [Numer lotu] FROM Lot WHERE [Data] = '01.12.2021 08:15' and Nazwa='Port lotniczy Londyn-Stansted'),'SE0000021'),
	((SELECT [Numer lotu] FROM Lot WHERE [Data] = '02.12.2021 10:15' and Nazwa='Port lotniczy Londyn-Stansted'),'SE0000021'),
	((SELECT [Numer lotu] FROM Lot WHERE [Data] = '03.12.2021 11:15' and Nazwa='Port lotniczy Londyn-Stansted'),'SE0000021'),
	((SELECT [Numer lotu] FROM Lot WHERE [Data] = '01.12.2021 08:15' and Nazwa='Port lotniczy Londyn-Stansted'),'SE0000013'),
	((SELECT [Numer lotu] FROM Lot WHERE [Data] = '02.12.2021 10:15' and Nazwa='Port lotniczy Londyn-Stansted'),'SE0000013');

select * from Osoby;
select * from Pasazerowie;
select * from Lotniska;
select * from Pracownicy;
select * from Bagaze;
select * from Urlopy;
select * from Samoloty;
select * from Lot;
select * from Bilety;
select * from Przeglad;
select * from Wykonuje;
select * from Pracuje_Podczas;