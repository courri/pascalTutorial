program minimax(input, output);
	var
		reading : Boolean;
		number, min, max, count : Integer;
	begin
		reading := true;
		min := maxint;
		max := -maxint;
		count := 0;
		while reading do
			begin
				read(number);
				if number = 0
					then reading := false
				else
					begin
						count := count + 1;
						if number < min
							then min := number;
						if number > max
							then max := number
					end;						
			end;
		writeln(count, ' numbers read.');
		writeln('Max, Min = ', max, ' ,', min)		
	end.