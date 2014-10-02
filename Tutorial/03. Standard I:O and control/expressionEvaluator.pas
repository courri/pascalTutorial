program expressionEvaluator(input, output);
(* Interprets expressions such as (+20-3-4+169);*)
var
	ch, sign : char;
	sum, current : integer;

begin
	write('>> ');
	read(sign);
	ch := ' ';
	sum := 0; current := 0;
	while (ch <> ';') do
	begin
		read(ch);
		case ch of
			'+', '-' :
				begin
					if sign = '+' then
						sum := sum + current
					else
						sum := sum - current;
					current := 0;
					sign := ch;		
				end;
			'0', '1', '2', '3', '4', '5', '6', '7', '8', '9' :
				begin
					current := (10 * current) + ord(ch) - ord('0');				
				end;
		end;	 	
	end;
	if sign = '+' then sum := sum + current
	else sum := sum - current;
	writeln(sum)
end.