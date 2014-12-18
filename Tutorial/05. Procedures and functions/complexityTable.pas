program complexityTable;
var
	max : integer;
	j : integer;

	procedure drawLine();
	const
		WIDE = 100;
	begin
		for j := 1 to WIDE do write('-');
		writeln();
	end;

	function factorial(n : longint) : longint;
	var
		ans : longint;
		i : integer;
	begin
		ans := 1;
		for i := 1 to n do
			ans := ans * i;
		factorial := ans
	end;

	function powerOfTwo(n : integer) : longint;
	const
		BASE = 2;
	var
		ans : longint;
		i : integer;
	begin
		ans := 1;
		for i := 1 to n do
			ans := ans * 2;
		powerOfTwo := ans;
	end;

begin
	write('n: '); read(max);
	if max > 16 then max := 16;
	drawLine();
	writeln('Table of computational complexities'); writeln();
	writeln('n' : 5, 'O(1)' : 6, 'O(ln(n))' : 10, 'O(sqrt(n))' : 13, 'O(n)' : 6, 'O(n^2)' : 15, 'O(2^n)' : 15, 'O(n!)' : 15);
	drawLine();
	for j := 1 to max do
		writeln(j : 5, 1 : 6, ln(j) : 10 : 2, sqrt(j) : 13 : 2, j : 6, j * j : 15, powerOfTwo(j) : 15, factorial(j) : 15);
		(*writeln('O(1)' : 8, 'O(ln(n))' : 10, 'O(sqrt(n))' : 13, 'O(n)' : 6, 'O(n^2)' : 8, 'O(2^n)' : 8, 'O(n!)' : 8);*)
	drawLine();
end.
