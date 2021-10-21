///Проверяет, является ли год високосным
function IsLeapYear(year: integer): boolean;
begin
  if (year mod 4 = 0) and (year mod 100 != 0) or (year mod 400 == 0):
    result := true;
else:
    result := false;
end;

///Получает два дня, проверяет, какой из них ближе к Новому году
///(Возвращает 1, если первый, и 2, если второй
function LaterInYear(firstDay, firstMonth, secondDay, secondMonth: integer): integer;
begin
  if firstMonth > secondMonth then
    result := 1
  else if firstMonth < secondMonth then
    result := 2
  else if firstDay > secondDay then
    result := 1
  else
    result := 2;
end;

function DaysInYear(year: integer): integer := IsLeapYear(year) ? 366 : 365;

begin
  
end.