program triangle(input, output);
var
	size, lines, spaces, spots, i, j : integer;
begin
	write('Size: ');
	read(size);
	spaces := size;
	spots := 0;
	for lines := 0 to size do
	begin
		for i := 0 to spaces do
			write(' ');
		for j := 0 to spots do
			write('*');
		spaces := pred(spaces);	
		spots := succ(spots);
		writeln();	
	end;
end.
