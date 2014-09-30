program probabilityTest(output);
var
	n, i : Integer;
	sum, accum : Real;
begin
	write('N: ');
	read(n);
	sum := 0.0;
	accum := 2;
	for i := 0 to n do
	begin
		accum := accum * 2;
		sum := sum + (i / accum);		
	end;
	writeln('Sum: ', sum:4:5);
end.
