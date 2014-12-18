program Ackerman(input, output);
var
	n, m : integer;

	function ack(m, n : integer) : integer;
	begin
		if m = 0 then ack := n + 1
		else if (n = 0) and (m > 0) then ack := ack(m - 1, 1)
		else ack := ack(m - 1, ack(m, n - 1))		
	end;
begin
	n := 2; m := 2;
	while n <> 0 do
	begin
		write('m: '); read(m);
		write('n: '); read(n);
		writeln(ack(m, n))
	end
end.