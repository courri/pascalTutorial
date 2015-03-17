program longestSequence(output);
	const n = 10;
	type
		sequence = array[0 .. n - 1] of integer;
	var
		b : sequence;
		i : integer;

	function logic() : integer;
		var k, p : integer;
	begin
		k := 0; p := 0;
		{Inv: p = longestSequence(b[0 .. k] /\ k \in [0, n])}
		while k <> n do begin
			k := k + 1;
			if b[k] = b[k - p] then
				p := p + 1;
		end;
		{Pos: p = longestSequence(b)}
		logic := p;
	end;

begin
	for i := 0 to n - 1 do begin
		write(i, ' '); read(b[i]);
	end;
	writeln('Longest sequence has size: ', logic);
end.