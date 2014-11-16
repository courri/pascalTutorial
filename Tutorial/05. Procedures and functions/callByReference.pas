program callbyreference(input, output);
var
	x : integer;

procedure change;
begin
	x := x + 1;	
end;

begin
	x := 0;
	writeln(x);
	change;
	writeln(x);
end.