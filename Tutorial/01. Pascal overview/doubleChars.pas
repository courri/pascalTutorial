{ This program finds and prints the "double characters"
  (e.g., "ee", ""oo) in a file.}

program doubleChars;
const
	BLANK = ' ';
var
	oldchar, newchar: char;
begin
	oldchar := BLANK;
	while not eof do
	begin
		read(newchar);
		if (newchar <> BLANK) and (oldchar = newchar)
			then writeln(oldchar, newchar);
		oldchar := newchar			
	end;
end.
