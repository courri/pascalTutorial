program ProgramName;
var
	aName : String;
begin
	aName := 'Java';
	case aName of
		'Free Pascal': Writeln('Lazarus IDE');
		'C++', 'Java': Writeln('CodeBlocks IDE');
		else
			writeln('Eclipse');
	end;
end.
