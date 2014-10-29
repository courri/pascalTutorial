program integral(output);
Uses math;
var
	a, b, h : real;
	n, i : integer;
	summation : real;
	term : real;
	point : real;
begin
	write('Introduce bounds and N: ');
	read(a, b, n);
	h := (b - a) / (real(n));
	point := a;
	summation := 0;
	for i := 1 to n do
	begin
		point := point + h;
		term := log10(point + h) + log10(point);
		summation := summation + term;		
	end;
	summation := (h / 2.0) * summation;
	writeln('Summation: ', summation:6:4);
end.
