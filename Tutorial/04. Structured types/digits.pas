program PlayWirthDigits(input, output);

	type
		digits = (zero, one, two, three, four, five, six, seven, eight, nine);

	var
		digit : digits;

begin
	while not EOF do begin
		readln(digit);
		writeln('Digit is = ', ord(digit));

		if digit > zero then
			writeln('Pred is ', pred(digit));

		if digit < nine then
			writeln('Succ is ', succ(digit))

	end;
end.