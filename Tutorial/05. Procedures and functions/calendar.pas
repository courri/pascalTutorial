program calendar(input, output);
var
	year, month : integer;
	valid : boolean;

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

	function dayOfWeek(d, m, y : integer) : integer;

		function aux(m : integer) : integer;
		begin
			if m = 0 then aux := 0
			else if m = 1 then aux := 3
			else if m = 2 then aux := 2
			else if m = 3 then aux := 5
			else if m = 4 then aux := 0
			else if m = 5 then aux := 3
			else if m = 6 then aux := 5
			else if m = 7 then aux := 1
			else if m = 8 then aux := 4
			else if m = 9 then aux := 6
			else if m = 10 then aux := 2
			else if m = 11 then aux := 4			
		end;

	begin
		if m < 3 then y := y - 1;
		dayOfWeek := (y + y div 4 - y div 100 + y div 400 + aux(m - 1) + d) mod 7
	end;

	procedure printCalendar();
	const
		ALIGN = 14;
	var
		i, j : integer;
	begin

		i := 1;
		j := 1;
		
		if month = 1 then writeln('January' : ALIGN)
		else if month = 2 then writeln('February' : ALIGN)
		else if month = 3 then writeln('March' : ALIGN)
		else if month = 4 then writeln('April' : ALIGN)
		else if month = 5 then writeln('May' : ALIGN)
		else if month = 6 then writeln('June' : ALIGN)
		else if month = 7 then writeln('July' : ALIGN)
		else if month = 8 then writeln('August' : ALIGN)
		else if month = 9 then writeln('September' : ALIGN)
		else if month = 10 then writeln('October' : ALIGN)
		else if month = 11 then writeln('November' : ALIGN)
		else if month = 12 then writeln('December' : ALIGN);

		writeln('Su Mo Tu We Th Fr Sa');

		while i <> dayOfWeek(1, month, year) do begin
			write('    ');
			i := succ(i);
			j := succ(j);
		end;

		i := 1;
		while i <= daysInMonth(month, year) do begin
			write(i : 3); i := succ(i);
			
			j := succ(j);
			if j mod 7 = 0 then writeln();
		end;
		writeln();
	end;


begin
	valid := true;
	while valid do begin
		write('MONTH: '); read(month);
		write('YEAR: '); read(year);
		if (month in [1 .. 12]) then begin
			printCalendar();
			valid := false
		end
		else begin
			writeln('Invalid month, try again.');
			valid := true
		end		
	end;	
end.