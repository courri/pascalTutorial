program selections(input, output);

	const
		CAPACITY = 20;

	type
		counter = 0 .. CAPACITY;
		balls = 1 .. CAPACITY;
		container = set of balls;

	var
	 	numballs, samplesize : counter;
	 	turn : integer;

	procedure select(bag : container; sample, drawn : counter);

		var
			ball : balls;

	begin

		if drawn < sample then begin

			for ball := 1 to CAPACITY do begin
				if ball in bag then begin
					writeln(ball : 3 * drawn);
					turn := succ(turn);
					select(bag - [ball], sample, drawn + 1)
				end
			end
		end;	  	
	end; 


begin

	turn := 0;
	read(numballs, samplesize);

	if numballs >= samplesize then begin

		select([1 .. numballs], samplesize, 0);
		writeln('Total posibilities: ', turn)

	end

	else
		writeln('The number of balls must be greater than the sample size.')

end.