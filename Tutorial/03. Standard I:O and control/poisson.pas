program poisson(input, output);
var
	distribution : real;
	result : real;
	lambda : real;
	x, i, j, factorial : integer;
begin
	i := 0;
	while(i <= 10) do
	begin
		distribution := 0.0;
		factorial := 1;
		result := 1.0;
		x := i;
		lambda := real(x) / 2.0;
		for j := 1 to x do
			result := result * lambda;
		for j := 1 to x do
			factorial := factorial * j;
		distribution := (result / factorial) * exp(-lambda);
		writeln(distribution:5:2);
		i := succ(i);
	end;
	{}
end.
