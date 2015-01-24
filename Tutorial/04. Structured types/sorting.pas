program sorting(input, output);

	type
		sequence = array[0 .. 9] of integer;
	
	var
		a, b : sequence;

	procedure cpy(v : sequence; var w : sequence);

		var
			i : integer;

	begin
		
		for i := 0 to 9 do
			w[i] := v[i];

	end;	

	procedure printSequence(v : sequence);
		var
			i : 0 .. 9;

	begin

		for i := 0 to 9 do
			write(v[i], ' ');
		writeln();
		
	end;

	procedure swap(var a, b : integer);

		var
			temp : integer;

	begin
		temp := a; a := b; b := temp		
	end;

	procedure bubbleSort(v : sequence; var ans : sequence);

		var
			swapped : boolean;
			i : integer;

	begin	

		repeat
			swapped := false;
			for i := 0 to 9 do begin
				if v[i - 1] > v[i] then begin
					swap(v[i - 1], v[i]);
					swapped := true;
				end;
			end;
			
		until not swapped;

		cpy(v, ans);

	end;

begin

	a[0] := 9; a[1] := 8;
	a[2] := 1; a[3] := 7;
	a[4] := 6; a[5] := 3;
	a[6] := 4; a[7] := 5;
	a[8] := 4; a[9] := 1;

	writeln('Original list: '); printSequence(a);
	bubbleSort(a, b);
	writeln();
	printSequence(b);

	
end.