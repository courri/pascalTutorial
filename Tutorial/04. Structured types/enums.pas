program enums(input, output);
type
	names = (eduardo, sebastian, carlos, valeria, gerardo, marcela, camilo, andres, alicia);
var
	name : names;
begin

	for name := eduardo to alicia do 
		writeln(ord(name), ' : ', name);

	writeln(eduardo < alicia);

	writeln(alicia < eduardo);
	
	writeln(true > false); (* Boolean is an enum type*)
end.
