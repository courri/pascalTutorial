program UnionFindQuickFind(input, output);
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

	function connected(p, q : integer) : boolean;
	begin
		connected := id[p] = id[q];
	end;

	procedure union(p, q : integer);
		var pid, qid, i : integer;
	begin
		pid := id[p];
		qid := id[q];
		for i := 0 to N do
			if id[i] = pid then
				id[i] := qid;
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