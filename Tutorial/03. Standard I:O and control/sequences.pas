program sequences(output);
var
	i : integer;
begin
	i := 3;
	while(i <= 48) do
	begin
		writeln(i);
		i := i + 5;
	end;
	writeln('****************');
	i := -2;
	while(i <= 43) do
	begin
		writeln(i);
		i := i + 5;
	end;
	writeln('****************');
	i := 48;
	while(i >= 3) do
	begin
		writeln(i);
		i := i - 5;
	end;
	{}
end.
