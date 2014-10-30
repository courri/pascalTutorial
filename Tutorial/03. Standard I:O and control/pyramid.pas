program pyramid(input, output);
const
	PATT = '*';
var
	size : integer;
	i, j : integer;
begin
	write('SIZE: ');
	read(size);
	for i := 1 to size do
	begin
		for j := 1 to i do
			write(PATT);
		writeln();
	end;
	for i := size downto 1 do
	begin
		for j := i downto 1 do
			write(PATT);
		writeln();
	end;
	
end.