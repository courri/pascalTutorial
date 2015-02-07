program gpas(input, output);
	
	type
		gradeRange = 'A' .. 'F';
		points = -1 .. 4;

	var
		gradePoints : array [gradeRange] of points;

	procedure init;
	begin
		gradePoints['A'] := 4;
		gradePoints['B'] := 3;
		gradePoints['C'] := 2;
		gradePoints['D'] := 1;
		gradePoints['E'] := -1;
		gradePoints['F'] := 0;
	end;

	procedure processSingleStudent;
		var
			grade : gradeRange;
			sum, count : integer;

	begin
		sum := 0;
		count := 0;
		while not EOLN do begin
			read(grade);
			if gradePoints[grade] = -1 then
				write('Invalid grade')
			else begin
				sum := sum + gradePoints[grade];
				count := count + 1
			end;
		end;
		writeln('GPA = ', (sum / count) : 5 : 2);
		readln();
	end;

begin
	init;
	while not EOF do
		processSingleStudent;
end.