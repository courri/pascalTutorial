program skipblanks(input, output);
const
	BLANK = ' ';
var
	ch : char;
procedure skipblanks;
	begin
		repeat
			read(ch)
		until ch <> BLANK;
	end;
begin
	skipblanks;
	writeln(ch);
end.
