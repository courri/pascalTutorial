program square(input, output);
var
	size, i, j : integer;
begin
	write('Size: ');
	read(size);
	for i := 0 to size do
		write('* ');
	writeln();
	for i := 0 to (size - 1) do
	begin
		write('*');
		for j := 0 to (size - 2) do
			write('  ');
		write(' *');
		writeln();
	end;
	for i := 0 to size do
		write('* ');
	writeln();
end.
