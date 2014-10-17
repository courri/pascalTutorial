program factorial;
var
	number : integer;
	fact : integer;
	i : integer;
begin
	writeln('Welcome to factorial');
	write('Introduce a positive integer: ');
	read(number);
	fact := 1;
	for i := number downto 1 do
	begin
		fact := fact * i;		
	end;
	writeln('The factorial of ', number, ' is ', fact)
	{}
end.
