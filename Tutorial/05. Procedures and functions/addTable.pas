program addtable(input, output);
var
	add1, add2, sum : integer;
	max_digit : integer;

	procedure doWork();
	begin
		write('+');
		for add2 := 0 to max_digit do
			write(add2 : 3);
		writeln();

		for add1 := 0 to max_digit do begin
			write(add1 : 1);
			for add2 := 0to max_digit do begin
				sum := add1 + add2;
				write(sum : 3)
			end;
			writeln();
		end;		
	end;

begin
	write('N: '); read(max_digit);
	if max_digit > 40 then max_digit := 40;
	doWork();
end.