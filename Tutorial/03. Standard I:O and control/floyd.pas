program floyd(input, output);
var
	rows, lastNumber : integer;
	i, j : integer;
begin
	write('Rows: ');
	read(rows);
	lastNumber := 1;
	for i := 1 to rows do
	begin
		for j := 1 to i do
		begin
			write(lastNumber:3, ' ');
			lastNumber := succ(lastNumber);			
		end;
		writeln();		
	end;	
end.
