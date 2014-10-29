program inequality(output);

const
	BOUND = 10 * 10 * 10;
	POWER = 3;

var
	summation : integer;
	variable : integer;
{}
begin
	summation := 0;
	variable := 0;
	while(summation <= BOUND) do
	begin
		summation := summation + variable * variable * variable;
		variable := succ(variable);		
	end;
	writeln(variable);
end.