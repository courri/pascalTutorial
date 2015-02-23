program Dalgo1(input, output);
	const 
		n = 9;
		m = 8;

	type 
		vector = array[0 .. n - 1] of integer;
		matrix = array[0 .. m - 1] of vector;

	var 
		test : vector; 
		mat : matrix;
		i, j, k : integer;

	function busbin(b : vector; low, high : integer; x : integer) : integer;
		var mid : integer;
	begin
		mid := (low + high) div 2;
		if low > high then busbin := n;		
		if b[mid] = x then busbin := mid
		else if b[mid] < x then
			busbin := busbin(b, mid + 1, high, x)
		else if x < b[mid] then
			busbin := busbin(b, low, mid - 1, x)
	end;

	function busa(a : matrix; x : integer) : boolean;
		var row, col : integer;
	begin
		row := 0;
		col := n;
		while (row <> m) and (col = n) do begin
			col := busbin(a[i], 0, n - 1, x);
			if col = n then
				row := row + 1
		end; 
		busa := row <> m
	end;

begin
	
	for i := 0 to n - 1 do begin
		test[i] := i;
		write(test[i], ' ')
	end;

	writeln();
	writeln();
	writeln();

	for j := 0 to m - 1 do
		for k := 0 to n - 1 do
			mat[j, k] := (j + k);

	for j := 0 to m - 1 do begin
		for k := 0 to n - 1 do
			write(mat[j, k] : 2, ' ');
		writeln();
	end;

	writeln();
	writeln(busbin(test, 0, n - 1, 67));

	{*writeln(busa(mat, 23))*}
	
end.