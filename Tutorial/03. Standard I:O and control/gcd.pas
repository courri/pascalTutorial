program gcd(input, output);
var
	a, b, rem, quo, tempa, tempb : integer;
{}
begin
	write('a, b: ');
	read(a, b);
	while (a > 0) and (b > 0) do
	begin
		write('gcd(', a, ', ', b, ') = ');
		tempa := a; 
		tempb := b;
		rem := a mod b;
		while rem > 0 do
		begin
			b := a;
			a := rem;
			rem := b mod a;
		end;
		writeln(a);
		write('a, b: ');
		read(a, b);
	end;
	{}
end.
