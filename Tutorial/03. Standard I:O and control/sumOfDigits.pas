program sumOfDigits(input, output);
var
	number : integer;
	digit : integer;
	sum : integer;
	flag : integer;
begin
	write('Number: ');
	read(number);
	if number < 0 then
		writeln('Must be positive.')
	else
		begin
			flag := number;
			sum := 0;
			digit := 0;
			while (number > 0) do
				begin
					digit := number mod 10;
					sum := sum + digit;
					number := number div 10;				
				end;
			writeln('The sum of digits of ', flag, ' is: ', sum);
		end	
end.