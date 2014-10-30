program printMatrix(input, output);
var
	number, i, j : integer;

begin
	write('n: ');
	read(number);
	for i := 0 to number do
	begin
		for j := 0 to number do
			write('+');
		write(' ');
		for j := 0 to number do
			write('+');
		writeln();
	end;
end.