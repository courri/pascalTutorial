program piValue;
(* Computes pi from series pi / 4 = 1/1 - 1/3 + 1/5 - 1/7 + 1/9 + ... *)

const
	TINY = 0.00000002;
var
	n : integer;
	pi, term : real;
begin
	writeln('Computation of pi:');
	writeln();

	pi := 0.0;
	n := 1;

	repeat
		term := 4/n - 4/(n + 2);
		pi := pi + term;
		n := n + 4;		
	until term < TINY;

	writeln('After ', n div 4 : 7, ' cycles,');
	writeln('Pi: ', pi:12:7);
end.