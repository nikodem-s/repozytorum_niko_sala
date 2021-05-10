use AdventureWorks2017;
CREATE PROCEDURE ciag_fibonacciego
@poprzedni int=0,@obecny int=1,@licznik int=0,@nastepny int=0
as
begin
print 'nasz ciag fibonacciego';
print @poprzedni;
print @obecny;
while @licznik<30
begin
set @nastepny = @poprzedni + @obecny;
print @nastepny;
set @licznik = @licznik+1;
set @poprzedni = @obecny;
set @obecny = @nastepny;
end
end
EXEC ciag_fibonacciego;
