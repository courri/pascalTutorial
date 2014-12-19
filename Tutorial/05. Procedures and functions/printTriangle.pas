program printTriangle(input, output);
var
	numLines : integer;

	procedure doWork();
	const
		BLANK = ' ';
		STAR = '*';
	var
		row, leadblanks, countstars : integer;

	begin
		for row := 1 to numLines do begin
			for leadblanks := (numLines - row) downto 1 do
				write(BLANK);
			for countstars := 1 to (2 * row - 1) do
				write(STAR);
			writeln()
		end;		
	end;

begin
	write('N: '); read(numLines);
	doWork()
end.