program countChars(input, output);
const
	BLANK = ' ';
	COMMA = ',';
	PERIOD = '.';
var
	charcount, blankcount, commacount, periodcount: integer;
	character : char;
begin
	charcount := 0;
	blankcount := 0;
	commacount := 0; 
	periodcount := 0;
	while charcount <> 10 do
	begin
		read(character);
		charcount := charcount + 1;
		if character = BLANK
			then blankcount := blankcount + 1
		else if character = COMMA
			then commacount := commacount + 1
		else if character = PERIOD
			then periodcount := periodcount + 1
	end;
	writeln(charcount, 'characters.');
	writeln(blankcount, 'blanks.');
	writeln(commacount, 'commas.');
	writeln(periodcount, 'periods.');
	
end.
