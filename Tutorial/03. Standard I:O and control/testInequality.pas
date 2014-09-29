program testInequality(output);
var
	left, center, rigth : real;
	n : integer;
begin
	for n := 1 to (maxint - 1) do
	begin
		left := 1 / (n + 1);
		center := ln((n + 1) / n);
		rigth := 1 / n;
		writeln(n, ' ', (left < center)  and (center < rigth));		
	end;
end.