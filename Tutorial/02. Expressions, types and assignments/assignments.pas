program assignments(output);
var
	period: real;
	gravitational_force : real;

begin
	period := 2 * pi * sqrt(15/9.81);
	gravitational_force := (6.673E-8 * 34 * 65) / sqr(9);
	writeln(gravitational_force);
end.
