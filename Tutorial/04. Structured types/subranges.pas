program subranges(input, output);
type
	names = (eduardo, sebastian, carlos, valeria, gerardo, marcela, camilo, andres, alicia);
	sha = 0 .. 255;
	mid = 0 .. 90;
	males = eduardo .. carlos;
var
	qbit : sha;
	mit : mid;
	male_name : males;
	i : integer;
begin
	qbit := 215;
	mit := qbit mod 17;
	qbit := 0;
	while qbit < 245 do
	begin
		writeln(qbit);
		qbit := succ(qbit);
	end;

	writeln(qbit);
	writeln(mit);
	{}
end.
