program fibonacci(input, output);
var
	f1, f2, temp : longint;
	i, size : integer;
begin
	f1 := 1;
	f2 := 1;
	write('SIZE: ');
	read(size);
	for i := 3 to size do
	begin
		temp := f1;
		f1 := f2;
		f2 := f2 + temp;		
		writeln(f2);
	end;	
end.