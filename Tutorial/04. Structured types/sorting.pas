program sorting(input, output);

	type
		sequence = array[1 .. 10] of integer
	
	var
		a, b : sequence;

	(*procedure bubbleSort(v : sequence; var ans : sequence);*)

	procedure printSequence(v : sequence);
		var
			i : 0 .. 10;

	begin

		for i := 0 to 10 do
			write(v[i]);
		writeln();
		
	end;

begin

	a[0] = 9; a[1] = 8;
	a[2] = 1; a[3] = 7;
	a[4] = 6; a[5] = 3;
	a[6] = 4; a[7] = 5;
	a[8] = 4; a[9] = 1;

	printSequence(a);

	
end.