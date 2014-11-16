program callbyreferencediffenv(input, output);
var
	x : integer;

procedure change;
var
	x : integer;
begin
	x := 1;
end;

begin
	x := 0;
	writeln(x);
	change;
	writeln(x);
end.