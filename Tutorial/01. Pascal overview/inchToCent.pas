program inchToCent(input, output);

const
	CENT_PER_INCH = 2.54;
var
	inches, cent: Real;
(* This is a comment *)
begin
	write('Enter a length in inches: ');
	readln(inches);
	cent := CENT_PER_INCH * inches;
	writeln('That equals ', cent :1:1, ' centimeters.');

	writeln('****');
	writeln('*  *');
	writeln('*  *');
	writeln('****');

	writeln('****');
	writeln('*  *');
	writeln('*  *');
	writeln('****');
end.
