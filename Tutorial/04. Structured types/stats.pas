program stats(input, output);

label 999;
label 1;

	var
		datum : integer;

	function average(var data : array of real; n : integer) : real;

		var
			ans : real;
			i : integer;

	begin

		ans := 0;
		for i := 0 to n do
			ans := ans + data[i];
		average := ans / (n + 0.0);

	end;

	procedure readData(n : integer);

		var
			vector : array[1..99] of real;
			difference, avg : real;
			i : integer;

	begin

		writeln('Enter ', n, ' values: ');
		for i := 1 to n do begin
			write(i : 2, ' > ');
			read(vector[i]);
			vector[i] := vector[i];
		end;

		avg := average(vector, n);

		writeln('The average value is: ', avg : 4 : 2);

		writeln('Table of differences: ');
		writeln;

		writeln('i' : 2, 'v[i]' : 10, 'x[i] - avg' : 15);
		
		writeln();

		for i := 1 to n do begin
			difference := vector[i] - avg;
			writeln(i : 2, vector[i] : 10 : 2, difference : 15 : 2);
		end;
		
	end;

begin

	999:

		writeln('Size must me bigger than zero');

	1:

		write('Enter size of data: '); read(datum);
		if datum < 1 then goto 999;
		readData(datum);	

end.