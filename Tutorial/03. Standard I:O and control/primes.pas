program primes;
const
	QUANT = 100;
var
	current_prime : integer;
	i, j : integer;
	prime : boolean;
begin
	current_prime := 0;
	for i := 2 to QUANT do
	begin
		prime := true;
		j := 2;
		while j * j <= i do
		begin
			if (i mod j = 0) then
			begin
				prime := false;
				break;				
			end;
			if current_prime <> i then
			begin
				if prime then write(i, ' ');
				current_prime := i;
			end;
			j := j + 1;
		end;		
	end;
	writeln()
end.