program maxSubarray(input, output);
	{
		Sample input:
			9
			-2 1 -3 4 -1 2 1 -5 4
			[1|2|3|4]
		Expected output:
			The max sum is: 6
	}

	uses
		math;
	type
		sequence = array[1 .. 20] of integer;
		new_sequence = array[0 .. 20] of integer;
	var
		n, i, flag : integer;
		a : sequence;

	function select() : integer;
		var ans : integer;
	begin
		(*
			writeln('Please select the algorithm of choice, the options are:');
			writeln();
			writeln('1. O(n^3)');
			writeln('2. O(n^2)');
			writeln('3. O(nlog(n))');
			writeln('4. O(n)');
		*)

		read(ans);

		if not (ans in [1, 2, 3, 4]) then
			ans := -1;
		
		select := ans		
	end;


	function maxSubarraySlow(s : sequence) : integer;
		var
			m, sum, i, j, k: integer;
	begin
		m := 0;
		for j := 1 to n do
			for k := j to n do begin
				sum := 0;
				for i := j to k do
					sum := sum + s[i];
				if sum > m then
					m := sum
			end;
		maxSubarraySlow := m
	end;

	function maxSubarrayFaster(s : sequence; var len : integer) : integer;
		var
			summations : new_sequence;
			i, j, m, k, sum : integer;
	begin
		summations[0] := 0;
		for i := 1 to len do
			summations[i] := summations[i - 1] + s[i];
		m := 0;
		for j := 1 to len do
			for k := j to len do begin
				sum := summations[k] - summations[j - 1];
				if sum > m then
					m := sum;
			end;
		maxSubarrayFaster := m 
	end;

	function maxSubarrayDivideAndConquer(s : sequence; low, high : integer) : integer;
		var
			mid : integer;
			left_sum, right_sum, cross_sum : integer;

		function maxSubarrayCrossing(a : sequence; l, m, h : integer) : integer;
			var
				ls, rs, sum, i, j : integer;

		begin
			ls := -21474;
			sum := 0;
			for i := m downto l do begin
				sum := sum + a[i];
				if sum > ls then
					ls := sum
			end;

			rs := -21474;
			sum := 0;
			for j := m + 1 to h do begin
				sum := sum + a[j];
				if sum > rs then
					rs := sum
			end;
			
			maxSubarrayCrossing := ls + rs;

		end;

		function max3(a, b, c : integer) : integer;

			function max(a, b : integer) : integer;
			begin
				if a > b then
					max := a
				else
					max := b				
			end;

		begin
			max3 := max(a, max(b, c))
		end;

	begin
		if high = low then
			maxSubarrayDivideAndConquer := s[low]
		else begin
			mid := floor((low + high) / 2);
			left_sum := maxSubarrayDivideAndConquer(s, low, mid);
			right_sum := maxSubarrayDivideAndConquer(s, mid + 1, high);
			cross_sum := maxSubarrayCrossing(s, low, mid, high);

			maxSubarrayDivideAndConquer := max3(left_sum, right_sum, cross_sum)

		end;
	end;

	function maxSubarrayDynamicProgramming(s : sequence; len : integer) : integer;
		var
			M : new_sequence;
			t, sum : integer;

		function max(a, b : integer) : integer;
			begin
				if a > b then
					max := a
				else
					max := b				
			end;

	begin
		M[0] := 0;
		sum := 0;
		for t := 1 to n do begin
			M[t] := max(0, M[t - 1] + s[t]);
			sum := max(sum, M[t]);
		end;			

		maxSubarrayDynamicProgramming := sum;
		
	end;

begin
	read(n);
	if n > 20 then n := 20;
	for i := 1 to n do
		read(a[i]);

	flag := 7;
	while flag <> -1 do begin

		flag := select();

		case flag of
			1 : writeln('The max sum is: ', maxSubarraySlow(a));
			2 : writeln('The max sum is: ', maxSubarrayFaster(a, n));
			3 : writeln('The max sum is: ', maxSubarrayDivideAndConquer(a, 1, n));
			4 : writeln('The max sum is: ', maxSubarrayDynamicProgramming(a, n));
		end;
		
	end;
	
end.