program arrayHandling(input, output);

	var
		vector : array[1..10] of integer;
		i : integer;

	procedure readVector;

	begin

		write('Enter 10 numbers to feed the array: ');

		for i:= 1 to 10 do
			read(vector[i]);

	end;

	procedure writeVector;

	begin

		for i := 1 to 10 do
			write(vector[i], ' ');
		writeln();

	end;

	function search(target : integer) : integer;

		var
			j : integer;

	begin

		j := -1;

		for i := 1 to 10 do
			if vector[i] = target then
				j := i;

		search := j;

	end;

	procedure insert(number, pos : integer);

		var
			newVector : array[1..11] of integer;

	begin

		for i := 1 to pos - 1 do
			newVector[i] := vector[i];

		newVector[pos] := number;

		for i := pos + 1 to 11 do
			newVector[i] := vector[i - 1];

		for i := 1 to 11 do
			write(newVector[i], ' ');

		writeln();

	end;

	function delete(pos : integer) : integer;

		var
			newVector : array[1..9] of integer;

	begin
		
		for i := 1 to pos - 1 do
			newVector[i] := vector[i];

		for i := pos to 9 do
			newVector[i] := vector[i + 1];

		for i := 1 to 9 do
			write(newVector[i], ' ');

		writeln();

		delete := vector[pos];

	end;

	function summation() : integer;

		var
			sum : integer;

	begin

		sum := 0;
		
		for i := 0 to 10 do
			sum := sum + vector[i];

		summation := sum;

	end;

	function product() : integer;

		var
			prod : integer;

	begin

		prod := 0;
		
		for i := 0 to 10 do
			prod := prod * vector[i];

		product := prod;

	end;

begin
	
	readVector();

	insert(56, 3);
	delete(3);
	writeVector();

end.