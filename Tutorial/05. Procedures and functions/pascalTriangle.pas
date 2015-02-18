program pascalTraingle(input, output);
	var rows : integer;

	function pascal(r, c : integer) : integer;

	begin
		if (c = 0) or (c = r) then
			pascal := 1
		else
			pascal := pascal(r - 1, c - 1) + pascal(r - 1, c) 
	end;

	procedure triangle(bound : integer);
		var i, j : integer;
	begin
		i := 0;
		while i <= bound do begin
			j := 0; 
			while j <= i do begin
				write(pascal(i, j), ' ');
				j := j + 1;
			end;
			i := i + 1; 
			writeln();
		end;
	end;

begin
	read(rows);
	triangle(rows)	
end.