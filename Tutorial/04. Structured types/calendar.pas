program calendar(input, output);

	type
		month = (jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec);

	var
		days : array [month] of 28 .. 31;
		mon, this : month;
		year : integer;

	function isLeapYear(y : integer) : boolean;
	begin
		isLeapYear := (y mod 400 = 0) or ((y mod 4 = 0) and (y mod 100 <> 0))
	end;

	function dayOfWeek(d, m, y : real) : 1 .. 7;
	begin
		dayOfWeek := (d + m + y + (y div 4) +			
	end;	

	procedure populateDays();
	begin
		for this := jan to dec do begin
			case this of
				jan, mar, may, jul, aug, oct, dec:
					days[this] := 31;
				apr, jun, sep, nov:
					days[this] := 30;
				feb:
					begin
						if isLeapYear(year) then
							days[this] := 29
						else
							days[this] := 28						
					end;				
			end;
		end;
	end;

begin
	read(mon, year);
	populateDays();
	for this := jan to dec do
		writeln(this, ' ', days[this])
end.



