program prime(input, output);
var
	number : integer;

	function isPrime(n : integer) : boolean;
	var
		soFarPrime : boolean;
		candidate : integer;

	begin
		soFarPrime := TRUE;

		for candidate := 2 to (n - 1) do
			if (n mod candidate = 0) then
				soFarPrime := FALSE;
		isPrime := soFarPrime
	end;

	procedure printPrimesUpTo(bound : integer);
	var
		i : integer;
	begin 
		for i := 1 to bound do
			if isPrime(i) then write(i : 8)
	end;

begin
	write('BOUND: '); read(number);
	writeln('PRIMES UP TO ', number);
	writeln();
	printPrimesUpTo(number);
	writeln();
end.