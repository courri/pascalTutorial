program sorting(input, output);

	type
		sequence = array[0 .. 9] of integer;
	
	var
		a, b : sequence;

	procedure cpy(v : sequence; var w : sequence);

		var
			i : 0 .. 9;

	begin
		
		for i := 0 to 9 do
			w[i] := v[i];

	end;

	procedure randomSequence(var a : sequence);

		var
			i : 0 .. 9;	

	begin
		
		for i := 9 downto 0 do
			a[9 - i] := i;

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
			temp : 0 .. 9;

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

	procedure selectionSort(v : sequence; var ans : sequence);

		var
			i, j : 0 .. 9;

	begin

		for i := 0 to 9 do begin
			for j := i + 1 to 9 do begin
				if v[j] < v[i] then
					swap(v[i], v[j])
			end;
		end;

		cpy(v, ans);
		
	end;

	procedure insertionSort(v : sequence; var ans : sequence);

		var
			i, j : 0 .. 9;

	begin

		for i := 1 to 9 do begin

			j := i;
			while ((j > 0) and (v[j - 1] > v[j])) do begin
				swap(v[j], v[j - 1]);
				j := j - 1
			end;
		end;

		cpy(v, ans);
		
	end;

	procedure shellSort(v : sequence; var ans : sequence);

		var
			i, jump, n, m : 0 .. 9;
			swapped : boolean;

	begin
		jump := 9;

		while jump > 1 do begin
			
			jump := jump div 2;
			repeat
				swapped := false;

				for m := 0 to (9 - jump) do begin
					n := m + jump;
					if v[m] > v[n] then begin {v[m] < v[n] for ascending}
						swap(v[m], v[n]);
						swapped := true;
					end;
				end;
				
			until not swapped;

		end;

		cpy(v, ans);
		
	end;

begin

	a[0] := 9; a[1] := 8;
	a[2] := 1; a[3] := 7;
	a[4] := 6; a[5] := 3;
	a[6] := 4; a[7] := 5;
	a[8] := 4; a[9] := 1;

	writeln('Original list: '); 
	printSequence(a);
	
	randomSequence(b);
	bubbleSort(a, b);
	printSequence(b);

	randomSequence(b);
	selectionSort(a, b);
	printSequence(b);

	randomSequence(b);
	insertionSort(a, b);
	printSequence(b);

	randomSequence(b);
	shellSort(a, b);
	printSequence(b);

	
end.