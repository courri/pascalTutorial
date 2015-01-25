program powers(output);

	type
		vector = array[1..10] of integer;

	var
		v : vector;
		i : integer;

begin

	for i := 1 to 10 do begin
		v[i] := i;
		writeln(v[i] : 4, ' ', i * i : 4, ' ', i * i * i : 4);
	end;
	
end.