program MINMAX(input, output);

const
	MAX_NUMBER = 25;

var
	size, i, number, min, max : integer;
	list : array[0..MAX_NUMBER] of integer;

	procedure read_list();
	begin
		write('Enter the numbers, input 1 to indicate termination: ');

		size := 0;
		number := 1;

		while number <> 0 do begin
			read(number);
			list[size] := number;
			size := size + 1;
		end;

		size := size - 2;
		
	end;

	procedure bounds(var min, max : integer);
	begin

		min := 999;
		max := -999;
		
		for i := 0 to size do begin

			number := list[i];

			if number < min then
				min := number;
			if number > max then
				max := number
			
		end;

	end;

begin
	
	read_list();

	min := 0;
	max := 0;

	bounds(min, max);

	writeln('MIN: ', min);
	writeln('MAX: ', max)

end.