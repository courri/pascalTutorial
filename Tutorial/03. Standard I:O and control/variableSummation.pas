program variableSummation(input, output);
var
	amountOfInput : integer;
	number, sum : integer;
	i : integer;
begin
	write(': ');
	read(amountOfInput);
	sum := 0;
	for i := 1 to amountOfInput do
	begin
		read(number);
		sum := sum + number;
	end;
	writeln(sum);
end.