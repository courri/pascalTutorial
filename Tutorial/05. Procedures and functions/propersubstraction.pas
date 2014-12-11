program propersubstraction(input, output);

	var
		x, y, answer : integer;
		seed : integer;
		continue : boolean;

	function randint(r, s : integer) : integer;
		const
			MAX_SEED = 10000;
			MULTIPLIER = 201;
			ADDER = 3437;

	begin
		seed := (MULTIPLIER * seed + ADDER) MOD MAX_SEED;
		randint := r + seed * (s - r + 1) div MAX_SEED;		
	end;

	procedure swap(var a, b : integer);
		var
			temp : integer;

	begin
		temp := a;
		a := b;
		b := temp
	end;

begin
	continue := true;
	seed := 1;
	while continue do
	begin

		write('Introduce a number: ');
		read(seed);

		x := randint(0, 1000);
		y := randint(0, 1000);

		if y > x then
			swap(x, y);
			
		writeln('Please tell me how much is ', x, ' - ', y);
		write('Answer: ');
		read(answer);

		if answer <> (x - y) then
		begin
			writeln('Wrong answer, the correct one was: ', x - y, '.');
			continue := false	
		end
		else
			writeln('Correct. Very good.')		
	end;

end.
