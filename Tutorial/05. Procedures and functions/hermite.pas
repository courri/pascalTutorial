program hermite(input, output);

	function iterative(x : real; n : integer) : real;
	var
		h0, h1, hn : real;
		i : integer;
	begin
		if n = 0 then iterative := 1.0
		else if n = 1 then iterative := 2.0 * x
		else
		begin
			h0 := 1;
			h1 := 2 * x;
			hn := 1;
			i := 2;
			while i <= n do
			begin
			 	hn := 2*x*h1 - 2 * (n - 1) * h0;
			 	h0 := h1;
			 	h1 := hn;
			 	i := i + 1;
			end;
			iterative := hn;
		end;
	end;

	function recursive(x : real; n : integer) : real;
	
	begin
		if n = 0 then recursive := 1
		else if n = 1 then recursive := 2 * x
		else
		begin
			recursive := 2 * x * recursive(x, n - 1) - 2 * (n - 1) * recursive(x, n - 2);
		end;
	end;

begin
	writeln(iterative(5.0, 5) : 5 : 5);
	writeln(recursive(5.0, 5) : 5 : 5)
end.
