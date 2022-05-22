--zmiana nazwy lotniska
select * from Lot;
select * from Lotniska;

update Lotniska set Nazwa='Port lotniczy Berlin' where nazwa='Port lotniczy Berlin Brandenburg Willy Brandt';

select * from Lot;
select * from Lotniska;

--usuwanie samlotu
select * from Przeglad;
select * from Samoloty;

delete from Samoloty where [Numer samolotu]='SP-LRB';

select * from Przeglad;
select * from Samoloty;