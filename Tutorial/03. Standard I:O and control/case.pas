program caseStatement(input, output);

	var
		n1, n2 : integer;
		op : char;

	procedure getNumbers;
	begin
		read(n1, n2);
	end;

	procedure getOperator;
	begin
		repeat
			read(op);
		until op <> ' ';				
	end;

begin
	getNumbers;
	getOperator;

	case op of
		'+' : writeln(n1 + n2);
		'-' : writeln(n1 - n2);
		'*' : writeln(n1 * n2);
		'/' : writeln(n1 div n2); 
	end;
end.
