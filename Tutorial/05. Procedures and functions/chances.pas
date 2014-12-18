program chances(input, output);
var
	i, n, r : integer;
	stop : boolean;
	c, p, pr : real;

	function binomial(i, n : integer) : real;
	var
		b : real;
		k : integer;
	begin
		b := 1.0;
		for k := 1 to i do
			b := b * (n - k + 1) / k;
		binomial := b;
	end;

	function prob(p : real; i, n : integer) : real;
	var
		q : real;

		function exp(a : real; b : integer) : real;
		var
			e : real;
			i : integer;
		begin
			e := 1.0;
			for i := 1 to b do
				e := e * a;
			exp := e
		end;

	begin
		q := 1.0 - p;
		prob := exp(p, i) * exp(q, (n - i));
	end;

begin
	stop := false;
	writeln('Exact probability calculations: ');

	repeat
		writeln();
		write('Number of successes? '); read(r);
		write('Number of trials? '); read(n);

		if (r >= 0) and (n > 0) and (r <= n) then begin
			c := binomial(r, n);

			writeln('There are ', c : 8 : 2, ' combinations of ',
				r, ' from ', n);

			write('Probability of success on each trial? '); read(p);

			while (p < 0.0) or (p > 1.0) do begin
				writeln('Silly! ', p : 8 : 2, ' must be in [0, 1]');
				writeln('Try again!');
				write('Probability of success on each trial? '); read(p);
			end;
			pr := c * prob(p, r, n);
			writeln('Probability of ', r : 7, ' successes in ', n, ' trials is ', pr : 12 : 8);

			for i := r + 1 to n do begin
				c := binomial(i, n);
				pr := pr + c * prob(p, i, n);				
			end;

			writeln('Probability of ', r, ' or more successes is ', pr : 12 : 8);
		end

		else begin
			writeln('Impossible input values.');
			stop := true;
		end;
	until stop;
end.