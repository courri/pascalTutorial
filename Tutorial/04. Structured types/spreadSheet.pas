program sreadSheet(input, output);

	const
		MAX_SIZE = 10;

	var
		real_size, i : integer;
		a, b : array[1..MAX_SIZE] of integer;


begin
	read(real_size);
	if (real_size <= MAX_SIZE) and (real_size > -1) then begin

		for i := 1 to real_size do
			read(a[i], b[i]);

		writeln();

		for i := 1 to real_size do
			writeln(a[i], '  ',b[i]);		
	end;	
end.