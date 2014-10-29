program duplicateDigits(input, output);
var
	one, two, three, four, five, six, seven, eight, nine, zero : integer;
	number : integer;
	i : integer;
	digit, remainder : integer;
begin
	read(number);
	one := 0; 
	two := 0; 
	three := 0; 
	four := 0;  
	five := 0; 
	six := 0; 
	seven := 0; 
	eight := 0; 
	nine := 0; 
	zero := 0; 

	while(number <> 0) do
	begin
		digit := number mod 10;		
		case digit of
			1:
				one := succ(one);
			2: 
				two := succ(two);
			3: 
				three := succ(three);
			4: 
				four := succ(four);
			5: 
				five := succ(five);
			6:
				six := succ(six);
			7:
				seven := succ(seven);
			8:
				eight := succ(eight);
			9:
				nine := succ(nine);
			0:
				zero := succ(zero);
		end;
		number := number div 10;		
	end;
	if(one > 1) then 
		writeln(one, ' 1s.');
	if(two > 1) then 
		writeln(two, ' 2s.');
	if(three > 1) then 
		writeln(three, ' 3s.');
	if(four > 1) then 
		writeln(four, ' 4s.');
	if(five > 1) then 
		writeln(five, ' 5s.');
	if(six > 1) then 
		writeln(six, ' 6s');
	if(seven > 1) then 
		writeln(seven, ' 7s');
	if(eight > 1) then 
		writeln(eight, ' 8s');
	if(nine > 1) then 
		writeln(nine, ' 9s');
	if(zero > 1) then 
		writeln(zero, ' 0s.');
end.
