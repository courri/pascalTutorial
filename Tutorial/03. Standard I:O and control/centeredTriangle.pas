program centeredTriangle(input, output);
const
	PATTER1 = '.';
	PATTERN2 = '*';
var
	size, i, j, k: integer;
	patt1, patt2 : integer;
	lines : integer;

begin
	write('SIZE (Must be an odd number): ');
	read(size);
	if(size mod 2 = 0) then
		writeln('Number must be odd')
	else
	begin
		patt1 := (size - 1) div 2;
		patt2 := 1;
		lines := succ(patt1);
		for i := 1 to lines do
		begin
			for j := 1 to patt1 do
				write(PATTER1);
			for k := 1 to patt2 do
				write(PATTERN2);
			for j := 1 to patt1 do
				write(PATTER1);
			patt1 := pred(patt1);
			patt2 := succ(succ(patt2));
			writeln();			
		end;		
	end;
end.
