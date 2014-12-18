program funnyJeep(input, output);
const
	MULTIPLIER = 500;

var
	bound : integer;

	function getDistance(n : integer) : real;
	var
		i : integer;
		ans : real;
	begin
		ans := 0.0;
		i := 1;
		while i <> (2 * n - 1) do
		begin
			ans += 1 / (2 * i - 1);
			i := succ(i);
		end;
		getDistance := ans;		
	end;

begin
	write('N: '); read(bound);
	writeln(getDistance(bound):5:2)
end.