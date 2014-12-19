program daysOfLife(input, output);
type
	months = 1 .. 12;

	function isLeapYear(year : Integer) : boolean;
	var
		ans : boolean;
	begin
		ans := (year mod 4 = 0) and (year mod 100 <> 0);
		ans := (year mod 400 = 0) or ans;  
		isLeapYear := ans;
	end;

	function daysInMonth(month, year : integer) : integer;
	var
		isLeap : boolean;
	begin
		isLeap := isLeapYear(year);
	end;
begin
	writeln(isLeapYear(1900));
end.
