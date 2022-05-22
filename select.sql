drop view [IlePrzegladow];
go
-- Podaj ile przegladow mialy samoloty o zadanym modelu
create view [IlePrzegladow] as
select Samoloty.[Model], Samoloty.[Numer samolotu], COUNT(Przeglad.Id) as [Ilosc przegladow] from Samoloty
								join Przeglad on Przeglad.[Numer samolotu]=Samoloty.[Numer samolotu]
								where Samoloty.Model='Boeing 737'
								group by Samoloty.[Model],Samoloty.[Numer samolotu];
go
select * from [IlePrzegladow];

--ile bilet�w zosta�o sprzedanych na konkretne loty
select [Numer lotu], count([Numer paszportu]) from Bilety
group by [Numer lotu];

--Sporz�d� list� 5 pracownik�w, pracuj�cych w kraju X kt�rzy pracowali przy najwi�kszej liczbie lot�w, zestawienie posortuj alfabetycznie po nazwiskach tych os�b.
select Osoby.Nazwisko,TopLoty.[Numer paszportu], TopLoty.[Ilosc lotow] from (
select top (5) Pracownicy.[Numer paszportu],count([Numer lotu]) as [Ilosc lotow] from Pracownicy
join Lotniska on Lotniska.Nazwa=Pracownicy.Nazwa
join Pracuje_Podczas on Pracuje_Podczas.[Numer paszportu]=Pracownicy.[Numer paszportu]
where Lotniska.Kraj='Polska'
group by Pracownicy.[Numer paszportu]
order by [Ilosc lotow] desc ) as TopLoty
join Osoby on Osoby.[Numer paszportu]=TopLoty.[Numer paszportu]
order by Osoby.Nazwisko


--Podaj numer samolotu o modelu X, kt�ry otrzyma� najwi�cej przegl�d�w
select IlePrzegladow.[Numer samolotu],IlePrzegladow.[Ilosc przegladow] from IlePrzegladow
where [Ilosc przegladow]=(select MAX([Ilosc przegladow]) from IlePrzegladow)
group by IlePrzegladow.[Numer samolotu],IlePrzegladow.[Ilosc przegladow]

--Sporz�d� zestawienie lojalnych klient�w lotniska � klienci, kt�rzy w odbyli N lub wi�cej podr�y
select Bilety.[Numer paszportu],COUNT([Numer biletu]) as IloscPodrozy from Bilety
group by [Numer paszportu]
having COUNT([Numer biletu])>1
order by [IloscPodrozy] desc

--Pokaz pasazerow z iloscia wiz wieksza niz 1
select * from Pasazerowie
where len(Pasazerowie.Wizy)>4

--Pokaz osoby lec�ce do Stan�w zjednoczonych i nie posiadaj�ce wizy, wy�wietl narodowo��, aby mo�na by�o zweryfikowa� czy potrzebuj� wizy
select Bilety.[Numer paszportu],Bilety.[Numer lotu],Wizy,Narodowosc from Bilety
join Pasazerowie on Pasazerowie.[Numer paszportu]=Bilety.[Numer paszportu]
join Osoby on Bilety.[Numer paszportu]=Osoby.[Numer paszportu]
where [Numer lotu] in (select Lot.[Numer lotu] from Lot
						join Lotniska on Lot.Nazwa=Lotniska.Nazwa
						where Lotniska.Kraj='Stany Zjednoczone' and [Przylot/Odlot]='Odlot') and Wizy not like('%USA%')

--Pokaz numery paszport�w pasa�er�w i kwoty, kt�re musz� zap�aci� za baga� ci�szy ni� dopuszczalne 20kg
select [Numer paszportu], Waga, ((Waga-20)*35) as Nadplata from Bagaze
where Waga>'20'