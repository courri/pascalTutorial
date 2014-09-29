program cubeRoot(input, output);
const
	EPSILON = 1E-6;
var
	number, root : real;
begin
	repeat
		read(number);
		if number < 0 then
			writeln(number:5:6, ' does not have a real cube root.')
		else if number = 0
			then writeln(0)
		else
			begin
				root := 1;
				repeat
					root := (2 * root + number/sqr(root)) / 3;
				until (sqr(root) * root - number) < EPSILON;
				writeln(root:5:6);
			end;		
	until number = 0;
end.
