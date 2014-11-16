program sumharmonics(input, output);

var
	numerator, denominator,
	lastterm, termcount : integer;

procedure lowterm(var num, den : integer);
var
	numcopy, dencopy, remainder : integer;
begin
	numcopy := num;
	dencopy := den;
	while (dencopy <> 0) do
	begin
		remainder := numcopy mod dencopy;
		numcopy := dencopy;
		dencopy := remainder
	end;
	if numcopy > 1
	then
		begin
			num := num div numcopy;
			den := den div numcopy
		end	
end;

procedure addrationals(var num1, den1 : integer;
					   num2, den2 : integer);
begin
	num1 := num1 * den2 + num2 * den1;
	den1 := den1 * den2;
end;

begin
	numerator := 1;
	denominator := 1;
	write('n: ');
	read(lastterm);
	for termcount := 2 to lastterm do
	begin
		addrationals(numerator, denominator, 1, termcount);
		lowterm(numerator, denominator);
	end;
	writeln(numerator : 1, '/', denominator : 1);
end.