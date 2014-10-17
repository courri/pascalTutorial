program multiplicationTable;
const
	MAX = 100;
var
	number, counter : integer;

begin
	write('Introduce n: ');
	read(number);
	counter := 1;
	while (counter <> MAX) do
	begin
		writeln(number, ' * ', counter, ' = ', number * counter);
		counter := succ(counter);
	end;	
end.