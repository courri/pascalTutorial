{ Print a table of squares, cubes and fourth powers
  of integers. }

program powerTable(input, output);
	var
		tableSize, base, square, cube, quad : integer;
	begin
		write('Enter table size: ');
		read(tableSize);
		for base := 1 to tableSize do
			begin
				square := sqr(base);
				cube := base * square;
				quad := sqr(square);
				writeln(base, square, cube, quad, 1/base, 1/square,
					1/cube, 1/quad)
						
			end;		
	end.