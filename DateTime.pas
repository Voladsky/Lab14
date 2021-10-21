function IsLeapYear(year: integer): boolean;
begin
  if (year mod 4 = 0) and (year mod 100 != 0) or (year mod 400 == 0):
    result := true;
else:
    result := false;
end;


begin
  
end.