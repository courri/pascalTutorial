{
	vector    		upbound		lobound 		num_cells = ord(ub) - ord(lb) + 1
	[1..10]			10			1 				10 - 1 + 1    = 10
	[-3..2]			2			-3				2 - (-3) + 1  = 6
	['a'..'z']		z			a    			'z' - 'a' + 1 = 26
}

program basicVector(input, output);

	type
		direction = 0 .. 2;
		vector = array [direction] of real;

	var
		u, v, w : vector;

	function sum(u : vector) : real;

		var
			ans : real;
			i : direction;

	begin

		ans := 0.0;

		for i := 0 to 2 do
			ans := ans + u[i];

		sum := ans	

	end;

	function norm(u : vector) : real;

		var
			ans : real;
			i : direction;

	begin
		
 		ans := 0.0;

 		for i := 0 to 2 do
 			ans := ans + sqr(u[i]);

 		norm := sqrt(ans)

	end;

	function innerProduct(u, v : vector) : real;

		var
			ans : real;
			i : direction;

	begin
		
		ans := 0.0;

		for i := 0 to 2 do
			ans := ans + (u[i] * v[i]);

		innerProduct := ans;

	end;

	procedure sum(u, v : vector; var w : vector);

		var
			i : direction;

	begin

		for i := 0 to 2 do
			w[i] := u[i] + v[i]

	end;

	procedure difference(u, v : vector; var w : vector);

		var
			i : direction;

	begin

		for i := 0 to 2 do
			w[i] := u[i] - v[i]

	end;

	procedure assign(u : vector; var v : vector);

		var
			i : direction;

	begin

		for i := 0 to 2 do
			v[i] := u[i]
		
	end;

	procedure printVector(u : vector);

		var
			i : direction;

		begin
			
			for i := 0 to 2 do
				write(u[i] : 1 : 4, ' ');

			writeln(); 

		end;

begin

	writeln();

	u[0] := 1.0;  u[1] := 2.0; u[2] := 3.0;
	v[0] := 3.6;  v[1] := 2.9; v[2] := 1.0;

	printVector(u);
	printVector(v);

	writeln();

	writeln('SUM([1.0, 2.0, 3.0]): ', sum(u) : 1 : 4);
	writeln('SUM([3.6, 2.9, 1.0]): ', sum(v) : 1 : 4);

	writeln();

	writeln('NORM([1.0, 2.0, 3.0]): ', norm(u) : 1 : 4);
	writeln('NORM([3.6, 2.9, 1.0]): ', norm(v) : 1 : 4);

	writeln();

	writeln('[3.6, 2.9, 1.0] * [1.0, 2.0, 3.0]: ', innerProduct(u, v) : 1 : 4);

	writeln();

	assign(u, v);

	printVector(u);
	printVector(v);

	writeln();

	printVector(w);
	sum(u, v, w);
	printVector(w);

	writeln();

	printVector(w);
	difference(u, v, w);
	printVector(w);

	writeln();

end.