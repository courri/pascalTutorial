program dictionary(output);

	type
		colour = (RED, GREEN, BLUE, WHITE);
		palette = array[colour] of integer;

	var
		ross : palette;
		i : colour;


begin

	ross[RED] := 1;
	ross[GREEN] := 2;
	ross[BLUE] := 3;
	ROSS[WHITE] := 4;


	for i := RED to WHITE do
		write(ross[i], ' ');
	writeln;

end.