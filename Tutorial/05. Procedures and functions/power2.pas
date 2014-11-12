program ProgramName;
uses Math;
var
	n : integer;

	function power2(n:integer): integer;
	var k : integer;
	begin
		k := 0;
		while (n mod 2 = 0) do
		begin
			k := succ(k);
			n := n div 2;
		end;
		power2 := k
	end;

begin
	write('N: ');
	read(n);
	writeln('max(k) such that (2^k | ', n, ') = ', power2(n));	
end.
