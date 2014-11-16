program addrationals(input, output);
var
	n1, n2, d1, d2 : integer;

procedure addrationals(var num1, den1 : integer;
					   num2, den2 : integer);
begin
	num1 := num1 * den2 + num2 * den1;
	den1 := den1 * den2;
end;

begin
	write('(n1, d1): ');
	read(n1, d1);
	write('(n2, d2): ');
	read(n2, d2);
	addrationals(n1, d1, n2, d2);
	writeln(n1, '/', d1);
end.