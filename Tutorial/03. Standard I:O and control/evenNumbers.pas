program evenNumbers(input, output);
var
	i, number : integer;
begin
	write('n: ');
	read(number);
	for i := 0 to number do
		if (i mod 2 = 0) then
			write(i, ' ');
	writeln();
end.
