program cancelfactors1(input, output);
{
	Computes partial sums of the harmonic series
	H(n) = 1 + (1 / 2) + ... + (1 / n)
	The result should be expressed in the form
	numerator / denominator, where numerator, and denominator
	are integers.
}
var
	numerator, denominator : integer;


(* Divide numerator and denominator and their GCD *)
procedure lowterm(var num, den : integer);
var
	numcopy, dencopy, remainder : integer;
begin
	numcopy := num;
	dencopy := den;
	while (dencopy <> 0) do
	begin
		remainder := numcopy mod dencopy;
		numcopy := dencopy;
		dencopy := remainder
	end;
	if numcopy > 1
	then
		begin
			num := num div numcopy;
			den := den div numcopy
		end	
end;

begin
	write('(a,b): ');
	read(numerator, denominator);
	lowterm(numerator, denominator);
	writeln(numerator, ' ', denominator);
end.