program temperature;
var
	selection : integer;
	centi, fahren : real;
begin
	writeln('Please select an option: ');
	writeln('1. For Centigrate to Fahrenheit ');
	writeln('2. For Fahrenheit to centigrate ');
	write('>> ');
	read(selection);
	case selection of
		1:
		begin
			write('Enter centigrate: ');
			read(centi);
			fahren := (9 / 5) * centi + 32;
			writeln('Fahrenheit temperature is: ', fahren:6:2);			
		end;
		2:
		begin
			write('Enter fahrenheit: ');
			read(fahren);
			centi := (5 / 9) * (fahren - 32);
			writeln('Centigrate temperature is: ', centi:6:2);				
		end;
	end;
end.
