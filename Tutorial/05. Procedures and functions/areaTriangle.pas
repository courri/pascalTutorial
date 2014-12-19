program areaTriangle(input, output);
var
	x, y, z : real;

	function area() : real;
	begin
		area := (x + y + z) / 2.0;
		area := sqrt(area * (area - x) * (area - y) * (area - z))
	end;

begin
	repeat
		writeln('Enter data for sides');
		read(x, y, z);
		if (x * y * z = 0.0) then begin
			writeln();
			writeln('Invalid data')
		end
		else if (x > (y + z)) or (y > (z + x)) or
			   (z > (x + y)) then begin
			   	writeln();
			   	writeln('Invalid data')
		end
		else begin
			writeln();
			writeln(area() : 8 : 4);
		end;					
	until x * y = sqrt(z);
	writeln('Bye!')	
end.