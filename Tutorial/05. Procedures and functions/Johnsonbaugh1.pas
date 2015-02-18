program basicAlgorithms(input, output);
	const
		MIN = 1; 
		MAX = 10;
	type
		sequence = array [MIN .. MAX] of integer;
		bits = 0 .. 1;
		bitString = array [MIN .. MAX] of bits;
	var
		s : sequence;
		b : bitString;
		exercise : integer;

	procedure populateSequence();
	begin
		s[1] := 9; 
		s[2] := 45; 
		s[3] := 56; 
		s[4] := -4;
		s[5] := 99; 
		s[6] := 1; 
		s[7] := 65; 
		s[8] := 0;
		s[9] := 45;
		s[10] := 5
	end;

	procedure populateBits();
	begin
		b[1] := 1; 
		b[2] := 0; 
		b[3] := 1; 
		b[4] := 1;
		b[5] := 0; 
		b[6] := 0; 
		b[7] := 1; 
		b[8] := 0;
		b[9] := 1;
		b[10] := 1
	end;

	procedure printSequence(var s : sequence);
		var i : integer;
	begin
		for i := MIN to MAX do
			write(s[i], ' ');
		writeln;
	end;

	{ Corresponds to 1.2.1 }
	procedure smallestValueWhile(var s : sequence);
		var ans, i : integer;
	begin
		i := MIN;
		ans := s[i];
		while i <= MAX do begin
			if s[i] < ans then
				ans := s[i];
			i := i + 1
		end;
		writeln(ans)
	end;

	{ Corresponds to 1.2.2 }
	procedure smallestValueFor(var s : sequence);
		var ans, i : integer;
	begin
		ans := s[MIN];
		for i := MIN to MAX do
			if s[i] < ans then
				ans := s[i];
		writeln(ans)
	end;

	{ Corresponds to 1.2.3 }
	procedure largestPair(var s : sequence);
		var max1, max2, i : integer;
	begin
		if s[MIN] > s[MIN + 1] then begin
			max1 := s[MIN]; max2 := s[MIN + 1]
		end
		else begin
			max1 := s[MIN + 1]; max2 := s[MIN];
		end;
		for i := MIN + 2 to MAX do begin
			if s[i] > max2 then begin
				if s[i] > max1 then begin
					max2 := max1; max1 := s[i]
				end
				else max2 := s[i]
			end
		end;
		writeln(max1, ' ', max2)
	end;

	{ Correspnds to 1.2.4 }
	procedure smallestPair(var s : sequence);
		var min1, min2, i : integer;
	begin
		if s[MIN] > s[MIN + 1] then begin
			min1 := s[MIN + 1]; min2 := s[MIN]
		end
		else begin
			min1 := s[MIN]; min2 := s[MIN + 1]
		end;
		for i := MIN + 2 to MAX do begin
			if s[i] < min2 then begin
				if s[i] < min1 then begin
					min2 := min1; min1 := s[i]
				end
				else
					min2 := s[i]
			end
		end;
		writeln(min1, ' ', min2)
	end;

	{ Corresponds to 1.2.5 }
	procedure smallestLargest(var s : sequence);
		var small, big, i : integer;
	begin
		i := MIN; small := s[i]; big := s[i];
		for i := MIN to MAX do begin
			if s[i] < small then
				small := s[i]
			else if s[i] > big then
				big := s[i]
		end;
		writeln(small, ' ', big)
	end;

	{ Corresponds to 1.2.6 }
	procedure firstIndexOfLargest(var s : sequence);
		var big, i, ans : integer;
	begin
		big := s[MIN]; ans := MIN;
		for i := MIN to MAX do begin
			if s[i] > big then begin
				ans := i; big := s[i]
			end
		end;
		writeln(ans)
	end;

	{ Corresponds to 1.2.7 }
	procedure lastIndexOfLargest(var s : sequence);
		var big, i, ans : integer;
	begin
		big := s[MIN]; ans := MIN;
		for i := MIN to MAX do begin
			if s[i] >= big then begin
				ans := i; big := s[i]
			end
		end;
		writeln(ans)
	end;

	{ Corresponds to 1.2.8 }
	procedure firstIndexOf(var s : sequence; key : integer);
		label final;
		var i, ans : integer;
	begin
		ans := 0;
		for i := MIN to MAX do
			if s[i] = key then begin 
				ans := i;
				goto final
			end;
		final:
			writeln(ans)
	end;

	{ Corresponds to 1.2.9 }
	procedure lastIndexOf(var s : sequence; key : integer);
		var i, ans : integer;
	begin
		ans := 0;
		for i := MIN to MAX do
			if s[i] = key then 
				ans := i;
		writeln(ans)
	end;

	{ Corresponds to 1.2.10 }
	procedure indexOfFirstDecreasingItem1(var s : sequence);
		var i, ans : integer; flag : boolean;
	begin
		i := MIN;
		ans := 0;
		flag := false;
		while (i < MAX) and (not flag) do begin
			if s[i] > s[i + 1] then begin
				ans := i + 1; flag := true
			end;
			i := i + 1
		end;
		writeln(ans);
	end;

	procedure indexOfFirstDecreasingItem2(var s : sequence);
		label final;
		var i, ans : integer;
	begin
		ans := 0;
		for i := 2 to MAX do
			if s[i] < s[i - 1] then begin
			h
			end;
		final:
			writeln(ans);
	end;

	{ Corresponds to 1.2.11 }

	procedure reverseSequence(var s : sequence);
		var aux : sequence; i : integer;
	begin
		for i := MAX downto MIN do
			aux[i] := s[MAX - i + 1];
		printSequence(aux);
	end;

	{ Corresponds to 1.2.12 NOT }

	{ Corresponds to 1.2.13 Bubble-sort like }
	procedure sortBitString1(var b : bitString);
		var i, j : integer;

		procedure swap(var b : bitString; i, j : integer);
			var temp : bits;
		begin
			temp := b[i]; b[i] := b[j]; b[j] := temp
		end;

	begin
		for i := 0 to (MAX - 1) do
			for j := 0 to (MAX - 2) do
				if b[j] > b[j + 1] then
					swap(b, j, j + 1);
		printBits(b);
	end;

	procedure sortBitString2(var b : bitString);
		var i, j : integer;

		procedure swap(var b : bitString; i, j : integer);
			var temp : bits;
		begin
			temp := b[i]; b[i] := b[j]; b[j] := temp
		end;

	begin
		i := 1;
		j := MAX;
		while i < j do begin
			while (i < j) and (b[i] = 0) do
				i := i + 1;
			while (i < j) and (b[j] = 1) do
				j := j - 1;
			swap(b, i, j)
		end;
		printBits(b)
	end;
 
begin

	populateSequence();
	populateBits();

	write('Enter exercise number: '); read(exercise);
	case exercise of
		1 : 
			smallestValueWhile(s);
		2 :
			smallestValueFor(s);
		3 :
			largestPair(s);
		4 : 
			smallestPair(s);
		5 :		
			smallestLargest(s);
		6 : 
			firstIndexOfLargest(s);
		7 : 	
			lastIndexOfLargest(s);
		8 : 
			firstIndexOf(s, 99);
		9 : 
			lastIndexOf(s, 99);
		10:
			indexOfFirstDecreasingItem1(s);
		11:
			reverseSequence(s);
		13: 
			begin
				printBits(b);
				sortBitString1(b)
			end;

		else 
			exercise := 1
	end
end.