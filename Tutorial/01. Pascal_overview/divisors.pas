program divisors(input, output);
	var
		number, divisor : integer;
	begin
		repeat
			write('Enter the number: ');
			read(number);
			if number > 0
				then
					begin
						writeln('The divisors of ', number, ' are: ');
						for divisor := 2 to number do
							if number mod divisor = 0
								then writeln(divisor)						
					end;		
		until (number <= 0);		
	end.