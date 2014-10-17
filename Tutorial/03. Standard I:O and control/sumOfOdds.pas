program sumOfOdds;
var
	n, odd : integer;
	summation : integer;
begin
	summation := 0;
	n := 0;
	odd := 2*n + 1;
	while odd <= 21 do
	begin
		summation := summation + odd;
		odd := 2*n + 1;
		n := succ(n);			
	end;
	writeln(summation);
end.