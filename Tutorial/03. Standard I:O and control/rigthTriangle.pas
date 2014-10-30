program rigthTriangle(input, output);
const
	LINES = '-';
	DOTS = '*';
var
	size, i, j, k : integer;
	pattern1, pattern2 : integer;
begin
	write('SIZE: ');
	read(size);
	pattern2 := size - 1;
	pattern1 := size - pattern2; 
	for i := 0 to size do
	begin
		for j := 0 to pattern1 - 1 do
			write(DOTS);
		for k := 0 to pattern2 do
			write(LINES);
		pattern1 := succ(pattern1);
		pattern2 := pred(pattern2);
		writeln(); 	
	end;	
end.