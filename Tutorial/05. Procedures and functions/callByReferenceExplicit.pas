program callbyreference(input, output);
var
	x : integer;
	z : integer;

procedure change(var y : integer);
(* Whatever happends to y, also happends to the actual parameter *)
begin
	y := y + 1;	
end;

begin
	(* Cannot call change on an expression, just a variable *)
	x := 0;
	writeln(x);
	change(x);
	writeln(x);

	z := 7;
	writeln(z);
	change(z);
	writeln(z);
end.