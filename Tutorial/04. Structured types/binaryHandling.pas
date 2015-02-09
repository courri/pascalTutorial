program binaryHandling(output);
	const
		MIN = 1;
		MAX = 5;
	type
		bit = 0 .. 1;
		bitString = array [MIN .. MAX] of bit;
	var
		b : bitString;

	procedure printBits(var b : bitString);
		var i : integer;
	begin
		for i := MIN to MAX do
			write(b[i]);
		writeln;
	end;

	function to_decimal(b : bitString) : integer;
		var i, n : integer;
	begin
		i := 0; n := i;
		while i < MAX do begin
			n := n * 2 + b[MAX - i];
			i := i + 1
		end;
		to_decimal := n
	end;

	procedure to_binary(n : integer; var b : bitString);
		var i : integer;
	begin
		i := 0;
		while n > 0 do begin
			i := i + 1;
			b[i] := n mod 2;
			n := n div 2
		end;
	end;

begin
	b[1] := 1; b[2] := 1; b[3] := 0; b[4] := 0; b[5] := 1;
	printBits(b);
	writeln(to_decimal(b));
	to_binary(7, b);
	printBits(b);
end.