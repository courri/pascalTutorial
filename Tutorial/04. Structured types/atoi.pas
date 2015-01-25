program stringHandling(input, output);

	type
		str = array[0..20] of char;
		{digits = ('0', '1', '2', '3', '4', '5', '6', '7', '8', '9');}

	var
		test : str;

	function lengthString(var reference : str) : integer;

		var
			i : 0 .. 20;

	begin

		i := 0;
		while reference[i] <> '#' do
			i := i + 1;

		lengthString := i - 1

	end;

	procedure initializeString(var reference : str);

		var
			i : 0 .. 20;

	begin

		for i := 0 to 20 do
			reference[i] := '#';

	end;

	procedure printString(var reference : str);

		var
			i, len : 0 .. 20;

	begin

		len := lengthString(reference);
		for i := 0 to len do
			write(reference[i]);
		writeln;

	end;

	function power(n, b : integer) : integer;

		var
			ans, i : integer;

	begin

		ans := 1;
		for i := 1 to b do
			ans := ans * n;

		power := ans;

	end;

	function atoi(var reference : str) : integer;

		var
			i : 0 .. 20;
			ans, len, rep, p : integer;
	begin

		len := lengthString(reference);
		ans := 0; rep := 0;
		i := len;

		while i <> 0 do begin

			rep := ord(reference[i]) - 48;			
			p := len - i;

			writeln(i, ' ', reference[i], ' ', rep, ' ', p);

			ans := ans + rep * power(10, p);
			i := i - 1;			
		end;

		atoi := ans;

	end;

begin

	initializeString(test);

	test[0] := 'N'; test[1] := 'i'; test[2] := 'k';
	test[3] := 'l'; test[4] := 'a'; test[5] := 'u';
	test[6] := 's'; test[7] := ' '; test[8] := 'W';
	test[9] := 'i'; test[10] := 'r'; test[11] := 't';
	test[12] := 'h'; test[13] := '.';

	initializeString(test);

	test[0] := '1'; test[1] := '0';


	printString(test);

	writeln(atoi(test));

end.
