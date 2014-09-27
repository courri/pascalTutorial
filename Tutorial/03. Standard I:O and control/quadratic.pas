(* This programs solves the equation a(x^2) + b(x) + c = 0 *)
program quadratic(input, output);
var
	a, b, c, discriminant, re, im : real;
	root1, root2 : real;
begin
	writeln('Hi, welcome to SOLVAR 3000, this will help you to solve the quadratic equation.');
	write('Introduce a, b, and c: ');
	read(a, b, c);
	if (a = 0) and (b = 0)
		then write('a, b cannot be both 0')
	else if (a = 0) and (b <> 0)
		then write('The solution is: ', -c/b:5:1)
	else if (a <> 0) and (c = 0)
		then write('The roots are: ', 0, ' and ', -b/a:5:1)
	else
		begin
			re := - b / (2 * a);
			discriminant := sqr(b) - 4 * (a * c);
			im := sqrt(abs(discriminant)) / (2 * a);
			if discriminant > 0
				then write('The roots are: ', (re + im):5:1, ' and ', (re - im):5:1)
			else
				write('The roots are: ', re:5:1, '+I*', im:2:1, ' and ', re:5:1, '-I*', im:2:1);			
		end;
	writeln('.')
end.
