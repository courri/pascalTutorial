program weirdSeries;
var
	summation : longint;
	power, x, N, counter, i : integer;
begin
	writeln('Enter (x, N) to compute 1 + x + x^2 + ... + x^N');
	read(x, N);
	counter := 0;
	summation := 0;
	while counter <= N do
	begin
		power := 1;
		for i := 0 to counter do
		begin
			power := power * x;
		end;
		summation := summation + power;	
		counter := counter + 1;	
	end;	
	writeln(summation)
end.