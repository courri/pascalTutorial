program mean(input, output);
	var
		number, sum : real;
		count : integer;

	begin
		number := 9999;
		while number <> 0 do
			begin
				read(number);
				count := succ(count);
				sum := sum + number;
			end;
		count := pred(count);
		writeln('Mean = ', sum/count:5:5);
	end.