program bounds(output);

	type
		vector = array [1..8] of integer;

	var
		min, max, min1, max1 : integer;
		v : vector;

	procedure min_max(v : vector; var min, max : integer);
		var i : integer;
	begin
		i := 1;
		min := v[1]; max := v[1];
		while i <= 8 do begin
			if v[i] > max then
				max := v[i]
			else if v[i] < min then
				min := v[i];
			i := i + 1
		end;
	end;

	procedure find2Largest(s : vector; var max, max2 : integer);
		var i : integer;
	begin
		if s[1] > s[2] then begin
			max := s[1]; max1 := s[2]
		end
		else begin
			max := s[2]; max1 := s[1]
		end;
		for i := 3 to 8 do begin
			if s[i] > max1 then begin
				if s[i] > max then begin
					max1 := max;
					max := s[i]
				end
				else
					max1 := s[i]
			end			
		end
	end;

	procedure find2Smallest(s : vector; var min, min1 : integer);
		var i : integer;
	begin
		if s[1] > s[2] then begin
			min := s[2]; min1 := s[1]
		end
		else begin
			min := s[1]; min1 := s[2]
		end;
		for i := 3 to 8 do begin
			if s[i] < min1 then begin
				if s[i] < min then begin
					min1 := min;
					min := s[i]
				end
				else
					min1 := s[i]
			end			
		end
	end;

	function indexFirstOcurrenceLargest(v : vector) : integer;
		var i, max, ans : integer;
	begin
		max := v[1];
		ans := 0;
		for i := 1 to 8 do
			if v[i] > max then
				ans := i;
		indexFirstOcurrenceLargest := ans;
	end;

	function indexLastOcurrenceLargest(v : vector) : integer;
		var i, max, ans : integer;
	begin
		max := v[8];
		ans := 0;
		for i := 8 downto 1 do
			if v[i] > max then
				ans := i;
		indexLastOcurrenceLargest := ans;
	end;

begin
	v[1] := 9; v[2] := 12; v[3] := 56; v[4] := -4;
	v[5] := 32; v[6] := 1; v[7] := 65; v[8] := 0;

	min := 0; max := 5;
	min_max(v, min, max);
	writeln(min, ' ', max);

	min := 0; min1 := 0;
	find2Smallest(v, min, min1);
	writeln(min, ' ', min1);

	max := 0; max1 := 0;
	find2Largest(v, max, max1);
	writeln(max, ' ', max1);

	writeln(indexFirstOcurrenceLargest(v));
	writeln(indexLastOcurrenceLargest(v));

	{Jonshobnaugh : 9 Exercise 8}

end.