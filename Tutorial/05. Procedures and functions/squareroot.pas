program squareroot(input, output);
var
	number : real;

function squareroot(val : real) : real;
const
	EPSILON = 1E-6;
var
	root : real;
begin
	if val = 0 then squareroot := 0
	else
	begin
		root := 1;
		repeat
			root := (val / root + root) / 2
		until abs(val / sqr(root) - 1) < EPSILON;
		squareroot := root	
	end;	
end;
begin
	read(number);
	writeln(squareroot(number) : 5 : 2)
end.
