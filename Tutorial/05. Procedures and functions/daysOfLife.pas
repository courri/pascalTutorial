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
	begin
		if isLeapYear(year) and (month = 2) 
			then daysInMonth := 29
		else if month = 1 
			then daysInMonth := 31
		else if month = 2 	
			then daysInMonth := 28
		else if month = 3 
			then daysInMonth := 31
		else if month = 4 
			then daysInMonth := 30
		else if month = 5 
			then daysInMonth := 31
		else if month = 6 
			then daysInMonth := 30
		else if month = 7 
			then daysInMonth := 31
		else if month = 8 
			then daysInMonth := 31
		else if month = 9 
			then daysInMonth := 30
		else if month = 10 
			then daysInMonth := 31
		else if month = 11 
			then daysInMonth := 30
		else if month = 12 
			then daysInMonth := 31
	end;

	function daysUntilNextYear(day, month, year : integer) : integer;
	var
		ans, i : integer;
	begin
		ans := daysInMonth(month, year) - day;
		i := month;
		while i < 12 do begin
			ans := ans + daysInMonth(i, year);
			i := succ(i);
		end;
		daysUntilNextYear := ans
	end;

	function funnyNumber(day, month, year : integer) : integer;
	begin
		month := (month + 9) mod 12;
		year := year - (month div 10);
		funnyNumber := (365 * year) + (year div 4) - (year div 100) + 
			(year div 400) + (month * 306 + 5) div 10 + (day - 1);
	end;

	function daysBetweenDates(d1, m1, y1, d2, m2, y2 : integer) : integer;
	begin
		daysBetweenDates := funnyNumber(d2, m2, y2) - funnyNumber(d1, m1, y1)
	end;

	function secondsInDays(days : integer) : integer;
	const
		SECONDS_MINUTE = 60;
		MINUTES_HOUR = 60;
		HOUR_DAYS = 24;
	begin
		secondsInDays := days * HOUR_DAYS * MINUTES_HOUR * SECONDS_MINUTE;		
	end;

begin
	writeln(secondsInDays(daysBetweenDates(1, 2, 1993, 1, 1, 1994)));
end.
