program statistics(input, output);
var
	number, sum, mean, deviation : real;
	count : integer;
begin
	writeln('Enter a list of numbers (final number must be zero).');
	number := 5.0;
	sum := 0.0;
	count := 0;
	while (number <> 0) do
	begin
		read(number);
		sum := sum + number;
		count := succ(count);		
	end;
	count := pred(count);
	writeln('Mean: ', (sum / count):4:6);
end.
