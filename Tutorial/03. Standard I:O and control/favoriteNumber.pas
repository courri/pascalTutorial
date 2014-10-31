program favoriteNumber(input, output);
const
	FAV_NUMBER = 14;
var
	amountOfNumbers : integer;
	number, i : integer;
begin
	write(': ');
	read(amountOfNumbers);
	for i := 1 to amountOfNumbers do
	begin
		read(number);
		write(number, ' ');
		if number = FAV_NUMBER then
			writeln(number, ' is my favorite number too');

	end;
	writeln();
end.
