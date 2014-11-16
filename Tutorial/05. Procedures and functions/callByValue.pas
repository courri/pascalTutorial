program callbyvalue(input, output);
var
	x : integer;

procedure change(y : integer);
begin
	y := 1;	
end;

begin
	x := 0;
	writeln(x);
	change(x);
	writeln(x);
	change(2 + 5); (* Allows expressions *)
end.