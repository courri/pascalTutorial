program ColorCount(input, output);

	type
		color = (red, blue, yellow, green, orange, brown, white, black);

	var
		primaryColorCount : integer;
		totalColorCount : integer;
		count : integer;
		theColor : color;

begin
	primaryColorCount := 0;
	totalColorCount := 0;
	writeln('Count follow: ');

	for theColor := red to black do begin
		read(count); writeln(count);

		totalColorCount := totalColorCount + count;

		if theColor <= yellow then
			primaryColorCount := primaryColorCount + count;
	end;

	writeln('Primary color count: ', primaryColorCount);
	writeln('Total color count: ', totalColorCount);

	for theColor := red to black do
		writeln(ord(theColor))
end.