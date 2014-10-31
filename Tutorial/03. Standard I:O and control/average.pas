program average(input, output);
const
	END_OF_DATA = -1.0;
var
	count : integer;
	sum, current : real;
	avg : real;
begin
	current := 0.0;
	sum := 0.0;
	count := 0;
	while current <> END_OF_DATA do
	begin
		read(current);
		sum := sum + current;
		count := succ(count);		
	end;
	avg := sum / (count + 0.0);
	writeln('AVERAGE: ', avg:5:3);
end.
