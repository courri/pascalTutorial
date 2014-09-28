program basicWhile(input, output);
var
	number : integer;
	counter : integer;
	product : integer;
	factor : integer;
begin
	write('Please enter an integer different than zero: ');
	readln(number);
	product := number;
	counter := 0;
	if number <> 0 then
		while not odd(number) do
			begin
				number := number div 2;
				counter := succ(counter)
			end;
	writeln('Final number is: ', number);
	writeln('The loop ran ', counter, ' times.');
	if counter = 1 then
		writeln('Note: ', 2, ' * ', number, ' = ', product)
	else
		begin
			factor := product div number;
			writeln('Note: ', factor, ' * ', number, ' = ', product);
		end;
end.