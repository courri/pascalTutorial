program pas(input, output);
var
	x : integer;
begin
	write(': ');
	read(x);
	if x < 0 then 
		x := -x;
	writeln(x:2);	
end.