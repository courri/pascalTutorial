program moneyChange(input, output);
const
	VALUE_1 = 25;
	VALUE_2 = 10;
	VALUE_3 = 5;
	VALUE_4 = 1;
var
	number : integer;
	five : integer;
	ones : integer;
	tens : integer;
	tfve : integer;
	sum : integer;
	flag : integer;
begin
	write('Enter amount of money, and hit ENTER: ');
	readln(number);
	flag := number;
	if not (number in [1 .. 99]) then
		writeln('You must enter a sum of money up to 99.')
	else
		begin
			tfve := 0; tens := 0; five := 0; ones := 0;
			sum := tfve + tens + five + ones;
			if (sum <> flag) then
				begin
					tfve := VALUE_1 * (number div VALUE_1);
					number := number - tfve;
					sum := sum + tfve;
				end;
			if (sum <> flag) then
				begin
					tens := VALUE_2 * (number div VALUE_2);
					number := number - tens;
					sum := sum + tens;
				end;
			if (sum <> flag) then
				begin
					five := VALUE_3 * (number div VALUE_3);
					number := number - five;
					sum := sum + five;
				end;
			if (sum <> flag) then
				begin
					ones := VALUE_4 * (number div VALUE_4);
					number := number - ones;
					sum := sum + ones;
				end;			
			writeln('You would need: ');
			writeln('01c: ', ones div VALUE_4);
			writeln('05c: ', five div VALUE_3);
			writeln('10c: ', tens div VALUE_2);
			writeln('25c: ', tfve div VALUE_1);			
		end;	
end.