program strings(input, output);

	var
		name : array[1..5] of string[20];
		i : integer;

begin
	writeln('Enter 5 names ');

	for i := 1 to 5 do
		readln(name[i]);

	writeln('The entered names are .... ');

	for i := 1 to 5 do
		writeln(name[i]);
end.