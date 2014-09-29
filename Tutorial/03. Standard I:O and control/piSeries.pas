program piSeries(output);

const
	TINY = 0.000000002;
var
	n : integer;
	pi, term : real;

begin
	writeln('Computation of pi:');
	pi := 0.0;
	n := 1;
	repeat
		term := 1/n - 1/(n + 2);
		pi += term;
		n := n + 4;		
	until term < TINY;
	writeln('Pi: ', 4*pi:2:9);
end.