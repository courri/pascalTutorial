program factorialTable(input, output);
var
	i : integer;
	bound, factorial : longint;
begin
	write('SIZE (Bigger than one): ');
	read(bound);
	writeln('   n   |   n!  ');
	writeln('-------|-------');
	factorial := 1;
	for i := 1 to bound do
	begin
		factorial := i * factorial;
		writeln('   ', i,'   |   ',   factorial);
	end;
	{}
end.
