program squareRoot(input, output);
	var
		x: real;
	begin
		repeat
			write('Enter a number: ' );
			read(x);
			if x >= 0
				then writeln(sqrt(x))
				else writeln(x, ' Does not have a real square root.')		
		until x = 0;
	end.