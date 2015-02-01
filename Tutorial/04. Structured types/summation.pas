program sum(input, output);

	type
		vector = array[1..10] of real;

	var
		v : vector;
		i : integer;
		summation, current : real;

begin

	summation := 0.0; current := 0.0;
	for i := 1 to 10 do begin
		read(current);
		v[i] := current;
		summation := summation + current;
	end;

	for i := 1 to 9 do
		write(v[i] : 2 : 2, ' + ');

	writeln(v[10] : 2 : 2, ' = ', summation : 4 : 2);
	
end.