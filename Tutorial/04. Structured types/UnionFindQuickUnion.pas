program UnionFindQuickUnion(input, output);
	const N = 9;
	type vector = array [0 .. N] of integer;
	var 
		id : vector;
		a, b : integer;

	procedure init();
		var i : integer;
	begin
		for i := 0 to N do
			id[i] := i
	end;

	function root(p : integer) : integer;
		var i : integer;
	begin
		i := id[p];
		while(i <> id[i]) do
			i := id[i];
		root := i
	end;

	function connected(p, q : integer) : boolean;
	begin
		connected := root(p) = root(q)
	end;

	procedure union(p, q : integer);
		var rootP, rootQ : integer;
	begin
		rootP := root(p);
		rootQ := root(q);
		id[rootP] := rootQ;
	end;

	procedure printId();
		var i : integer;
	begin
		for i := 0 to N do
			write(id[i], ' ');
		writeln();
	end;

begin
	init();

	a := N; b := N + 1;
	while(a <> b) do begin
		read(a); read(b);
		if a > N then a := N;
		if b > N then b := N;
		if not connected(a, b) then
			union(a, b);
	end;

	printId();
end.