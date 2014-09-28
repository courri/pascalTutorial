program newton(input, output);
const
	EPSILON = 1E-6;
var
	number, root : real;
begin
	repeat
		read(number);
		if number < 0 then
			writeln(number:5:6, ' does not have a real square root.')
		else if number = 0
			then writeln(0)
		else
			begin
				root := 1;
				repeat
					root := (number / root + root) / 2;
				until abs(number / sqr(root) - 1) < EPSILON;
				writeln(root:5:6)
			end;		
	until number = 0;
end.