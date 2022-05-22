drop table Urlopy;
drop table Bagaze;
drop table Pracuje_Podczas;
drop table Wykonuje;
drop table Bilety;
drop table Lot;
drop table Przeglad;
drop table Samoloty;
drop table Pasazerowie;
drop table Pracownicy;
drop table Osoby;
drop table Lotniska;
drop function POPWIZY;
go
create function POPWIZY(@string varchar(1000))
returns bit as
begin
	declare @result bit = 0
	if @string like REPLICATE('[A-Z][A-Z][A-Z],', LEN(@string)/4)
		set @result = 1
	return @result
end
go

create table Osoby(
	[Numer paszportu] varchar(9) not null primary key check([Numer paszportu] like '[A-Za-z][A-Za-z][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
	Imie varchar(50) not null,
	Nazwisko varchar(50) not null,
	Narodowosc varchar(50) not null
);



create table Pasazerowie(
	[Numer paszportu] varchar(9) not null primary key references Osoby ON UPDATE CASCADE ON DELETE CASCADE,
	Wizy varchar(1000) check(dbo.POPWIZY(Wizy) = 1 or Wizy='')
);

create table Lotniska(
	Nazwa varchar(100) not null PRIMARY KEY,
	Kraj varchar(50) not null
);

create table Pracownicy(
	[Numer paszportu] varchar(9) not null primary key references Osoby ON UPDATE CASCADE ON DELETE CASCADE,
	Stanowisko varchar(50) not null,
	Telefon varchar(9) check (ISNUMERIC(Telefon) = 1 or Telefon=''),
	Adres varchar (100) not null,
	Nazwa varchar(100) references Lotniska
);

create table Urlopy(
	Id int primary key identity(1,1),
	Rodzaj varchar(20) not null check(Rodzaj like 'Wypoczynkowy' or Rodzaj like 'Na ¿¹danie' or Rodzaj like 'Okolicznoœciowy' 
	or Rodzaj like 'Na dziecko' or Rodzaj like 'Szkoleniowy' or Rodzaj like 'Bezp³atny'),
	[Data rozpoczecia] date not null,
	[Data zakonczenia] date not null,
	[Numer paszportu] varchar(9) not null references Pracownicy ON UPDATE CASCADE ON DELETE CASCADE,
	Unique([Numer paszportu],[Data rozpoczecia])
);

create table Bagaze(
	Id int primary key identity(1,1),
	Waga float not null,
	Rozmiar float not null,
	[Numer paszportu] varchar(9) not null references Pasazerowie ON UPDATE CASCADE ON DELETE CASCADE,
);

create table Samoloty(
	[Numer samolotu] varchar(10) not null primary key,
	Model varchar(50) not null,
	Przewoznik varchar(50) not null
);

create table Lot(
	[Numer lotu] int primary key identity(1,1),
	[Data] Datetime not null,
	[Czas trwania] time not null,
	Bramka int not null check(Bramka<100),
	[Przylot/Odlot] varchar(10) not null check([Przylot/Odlot] like 'Przylot' or [Przylot/Odlot] like 'Odlot'),
	Nazwa varchar(100) not null references Lotniska ON UPDATE CASCADE ON DELETE CASCADE,
	[Numer samolotu] varchar(10) not null references Samoloty ON UPDATE CASCADE ON DELETE CASCADE,
	Unique([Data],Nazwa)
);

create table Bilety(
	[Numer biletu] int primary key identity(1,1),
	Rodzaj varchar(20) not null check(Rodzaj like 'Premium' or Rodzaj like 'Podstawowy'),
	Miejsce varchar(3) not null check(Miejsce like '[0-9][0-9][A-Fa-f]'),
	[Numer paszportu] varchar(9) not null references Pasazerowie ON UPDATE CASCADE ON DELETE CASCADE,
	[Numer lotu] int not null references Lot ON UPDATE CASCADE ON DELETE CASCADE
	Unique([Numer lotu],Miejsce)
);

create table Przeglad(
	Id int primary key identity(1,1),
	Rodzaj varchar(20) not null check(Rodzaj like '[A-D]'),
	[Data] date not null,
	[Dlugosc waznosci] date not null,
	[Numer samolotu] varchar(10) not null references Samoloty ON UPDATE CASCADE ON DELETE CASCADE
	Unique([Numer samolotu],[Data],Rodzaj)
);

create table Wykonuje(
	Id int not null references Przeglad ON UPDATE CASCADE ON DELETE CASCADE,
	[Numer paszportu] varchar(9) not null references Pracownicy ON UPDATE CASCADE ON DELETE CASCADE,
	primary key(Id,[Numer paszportu])
);

create table Pracuje_Podczas(
	[Numer lotu] int not null references Lot ON UPDATE CASCADE ON DELETE CASCADE,
	[Numer paszportu] varchar(9) not null references Pracownicy ON UPDATE CASCADE ON DELETE CASCADE,
	primary key([Numer lotu],[Numer paszportu])
);