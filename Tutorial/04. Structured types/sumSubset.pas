program exampleOnSets(input, output);
	type
		nums = 0 .. 100;
		integers = set of nums;
	var
		w : integers;
		s : integer;

	procedure printSet(arg : integers);
		var i : integer;
	begin
		for i in arg do
			write(i, ' ');
		writeln();
	end;

	procedure readSet();
		var size, i, number : integer;
	begin
		write('Enter the length of the set: ');
		read(size);
		for i := 1 to size do begin
			read(number);
			w := w + [number]
		end;		
	end;

	function summationSet(arg : integers) : integer;
		var i, summation : integer;
	begin
		summation := 0;
		for i in arg do
			summation := summation + i;
		summationSet := summation;
	end;

	procedure subsetSum(arg : integers; n : nums);
		label halt;
		var
			t, x : integer;
			v : integers;
	begin
		if (arg = []) or (n <= 0) then
			goto halt;
		t := summationSet(arg);
		if t < s then goto halt;
		if(t = s) then begin
			printSet(arg);
			goto halt
		end
		else begin
			for x in arg do begin
				v := arg - [x];
				subsetSum(v, s)
			end;
		end;
		halt:			
	end;

begin
	readSet();
	printSet(w);
	write('s: ');
	read(s);
	subsetSum(w, s)
end.