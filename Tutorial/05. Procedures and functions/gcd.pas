program gcd(input, output);
var
	n, m : integer;

function gcd(n, m : integer) : integer;
var
	rem : integer;
begin
	while m <> 0 do
	begin
		rem := n mod m;
		n := m;
		m := rem;		
	end;
	gcd := n
end;

begin
	write('(n, m) : ');
	read(n, m);
	writeln('GCD(', n, ', ', m, ') = ', gcd(n, m))
end.
