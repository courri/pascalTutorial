program eulerTaylor(input, output);
var
	x : real;
	sum_back, sum_ford : real;
	power, factorial : real;
	i, n, j, k : integer;
begin
	write('X: ');
	read(x);
	write('Number of terms: ');
	read(n);
	if x = 0.0 then
	begin
		writeln('Result fordwards: ', sum_ford:4:9);
		writeln('Result backwards: ', sum_back:4:9);
	end
	else
	begin	
		sum_back := 0.0;
		sum_ford := 0.0;
		for i := 0 to n do 
		begin
			power := x;
			for j := 1 to i do
				power := power * x;
			factorial := 1;
			for j := 1 to i do
				factorial := factorial * j;
			sum_back := sum_back + (power / factorial);		
		end;

		for i := n downto 0 do
		begin
			power := x;
			for j := 1 to i do
				power := power * x;
			factorial := 1;
			for j := 1 to i do
				factorial := factorial * j;
			sum_ford := sum_ford + (power / factorial);		
		end;
		writeln('Result fordwards: ', sum_ford:4:9);
		writeln('Result backwards: ', sum_back:4:9);
	end;
end.