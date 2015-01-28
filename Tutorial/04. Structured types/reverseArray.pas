program ReverseArray(input, output);

const
	MAX_SIZE = 30;

var
	size, i, number : integer;
	list : array[0..MAX_SIZE] of integer;

begin
	write('Enter the numbers, input 1 to indicate termination: ');

	size := 0;
	number := 1;

	while number <> 0 do begin
		read(number);
		list[size] := number;
		size := size + 1;
	end;

	size := size - 2;

	for i := size downto 0 do
		write(list[i], ' ');
	writeln();

end.