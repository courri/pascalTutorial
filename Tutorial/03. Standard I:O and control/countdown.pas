program countdown;
var
	sec : integer;
begin
	writeln('Countdown has begun ...');
	sec := 10;
	repeat
		write(sec, ' ');
		sec := sec - 1		
	until sec = 0;
	writeln('Zero')	
end.
