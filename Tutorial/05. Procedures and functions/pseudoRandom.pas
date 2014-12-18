{
	rn = (M * rn-1 + I) % m
}

program random(output);

const
	MULTIPLIER = 25173;
	INCREMENT = 13849;
	MODULUS = 65536;

var
	i, randint : integer;

	procedure rand(var randint : integer);
	begin
		randint := (MULTIPLIER * randint + INCREMENT) mod MODULUS
	end;

begin 
	randint := 876;
	
	for i := 0 to 10 do
	begin
		rand(randint);
		writeln(randint div (MODULUS div 6) + 2)
	end;		
end.