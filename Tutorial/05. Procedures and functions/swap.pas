program swap(input, output);
var
	a, b : integer;

	procedure swap(var a, b : integer);
	var
		temp : integer;
	begin
		temp := a;
		a := b;
		b := temp		
	end;
{}
begin
	write('a: ');
	read(a);
	write('b: ');
	read(b);
	swap(a, b);
	writeln('a, b: ', a, ' ', b)
	{}
end.
