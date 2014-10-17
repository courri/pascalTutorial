program primitiveCalculator;
var
	sign : char;
	a, b, ans : integer;
{}
begin
	write('Please enter a sign (+, -, *, /, %): ');
	read(sign);
	write('Enter two values: ');
	read(a, b);
	case sign of
		'+':
			ans := a + b;
		'-':
			ans := a - b;
		'*':
			ans := a * b;
		'/':
			ans := a div b;
		'%':
			ans := a mod b;
		else
		begin
			sign := 'a';
			writeln('Wrong sign.')
		end;
			
	end;
	if sign <> 'a' then
		writeln(a, ' ', sign, ' ', b, ' = ', ans);
end.
