program harmonicSeries(outout);
var
	termcount : integer;
	sum, limit : real;
begin
	termcount := 0;
	sum := 0;
	read(limit);
	repeat
		termcount := succ(termcount);
		sum := sum + (1 / termcount);		
	until sum > limit;
	writeln('Series: ', sum);
	writeln('Terms: ', termcount);
end.
