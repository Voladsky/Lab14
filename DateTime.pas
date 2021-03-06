///Проверяет, является ли год високосным
function IsLeapYear(year: integer): boolean;
begin
  Assert(year > 0);
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

///Определяет количество дней в заданном году
function DaysInYear(year: integer): integer;
begin
  Assert(year > 0);
  result := IsLeapYear(year) ? 366 : 365;
end;

///Определяет количество дней между двумя годами включительно
function DaysInYearRange(firstYear, secondYear: integer): integer;
begin
  Assert(firstYear > 0);
  Assert(secondYear > 0);
  result := 0;
  for var i := firstYear to secondYear do
  begin
    result += DaysInYear(i);
  end;
end;

///Возвращает число секунд в данном количестве часов
function SecondsInHours(h: integer): integer := h * 3600;

begin
  
end.