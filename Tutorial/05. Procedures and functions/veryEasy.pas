program veryeasy;
var
	n : integer;
	j : 0 .. 100;

	procedure drawLine();
	const
		WIDE = 30;
	begin
		for j := 1 to WIDE do write('-');
		writeln();
	end;

begin
	write('n: '); read(n);
	drawLine();
	writeln('Table of square roots'); writeln();
	writeln('n' : 8, 'sqrt(n)' : 10);
	for j := 1 to n do
		writeln(j : 8, sqrt(j) : 10 : 4);
	drawLine();

	drawLine();
	writeln('Table of natural logarithms'); writeln();
	writeln('n' : 8, 'ln(n)' : 10);
	for j := 1 to n do
		writeln(j : 8, ln(j) : 10 : 4);
	drawLine();
end.
