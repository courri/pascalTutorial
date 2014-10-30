program drawTriabgle(input, output);
var
	size, spaces, points, lines : integer;
	i, j, k : integer;
	done : boolean;
{}
begin
	done := true;
	while(done) do
	begin
		write('Size: ');
		read(size);
		if (size mod 2 = 0) then
			writeln('The number must be odd.')
		else
		begin
			lines := size - 2;
			points := 1;
			spaces := (size - 1) div 2;
			for i := 0 to lines do
			begin
				for j := 0 to spaces do
					write(' ');
				for k := 0 to points - 1 do
					write('*');
				spaces := spaces - 1;
				points := points + 2;
				writeln();
			end;
			done := false;		
		end;
				
	end;
end.
