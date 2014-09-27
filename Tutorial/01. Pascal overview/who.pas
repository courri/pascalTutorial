program who(input, output);
var
	name: packed array [1..20] of Char;
	letter: Integer;
begin
	write('What''s your name?: ');
	for letter := 1 to 20 do 
		read(name[letter]);
	writeln(name);
end.
