program newtonRaphson(output);
{ Equation: x * sin(x) = 1}
{ Recurrence: (1 + xn^2cos(xn)) / (sin(xn) + xn(cos(xn)))}
const
	EPSILON = 1E-10;
var
	i : integer;
	numerator : real;
	denominator : real;
	root : real;
begin
	i := 0;
	root := 1.0;
	numerator := 1.0;
	denominator := 1.0;
	while i < 200 do
		begin
			numerator := 1 + sqr(root) * cos(root);
			denominator := sin(root) + root * cos(root);
			root := numerator / denominator;
			i := succ(i);	
		end;
	writeln('The root of [x * sin(x) - 1], is: ', root:3:8, ' found in ', i, ' iterations.');
end.
