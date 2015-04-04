program Karatsuba(input, output);
	const
		MAX_DIGIT = 100;
	type
		digit = 0 .. 9;
		body = array[1..MAX_DIGIT] of digit;
		largeInt = record
			number : body;
			size : integer;
		end;

	var
		x, y, ans : largeInt;

	procedure initLargeInt(var n : largeInt; var digits : body; len : integer);
		var
			i : integer;
	begin
		if len > MAX_DIGIT then
			len := MAX_DIGIT;
		n.size := len;
		for i := 1 to len do
			n.number[i] := digits[i]

	end;

	procedure displayLargeInt(var n : largeInt; ln : boolean);
		var
			i : integer;
	begin
		for i := 1 to n.size do
			write(n.number[i]);
		if ln then
			writeln();
	end;

	procedure driver(var a, b : largeInt);
		var
			i, n : integer;
			aBody, bBody : body;
	begin
		write('Enter the size of the first number: '); read(n);
		writeln('Enter the digits of the first number: ');
		for i := 1 to n do
			read(aBody[i]);
		initLargeInt(a, aBody, n);
		write('Enter the size of the second number: '); read(n);
		writeln('Enter the digits of the second number: ');
		for i := 1 to n do
			read(bBody[i]);
		initLargeInt(b, bBody, n);
	end;

	procedure swapLargeInt(var a, b : largeInt);
		var
			temp : largeInt;
	begin
		initLargeInt(temp, a.number, a.size);
		initLargeInt(a, b.number, b.size);
		initLargeInt(b, temp.number, temp.size);
	end;

	procedure copyLargeInt(a : largeInt; var b : largeInt);
		var i : integer;
	begin
		b.size := a.size;
		for i := 1 to a.size do
			b.number[i] := a.number[i]
	end;

	procedure sliceLargeInt(a : largeInt; l, h : integer; var b : largeInt);
		var 
			i : integer;
			newBody : body;
	begin
		for i := l to h do
			newBody[i - l] := a.number[i];
			
		initLargeInt(b, newBody, h - l);
	end;

	procedure addLargeInt(a, b : largeInt; var ans : largeInt);

		var
			i, sum: integer;
			carry, difference : integer;
			finalNumber, overflow : body;
	begin
		if b.size > a.size then
			swapLargeInt(a, b);

		difference := a.size - b.size;
		carry := 0;

		for i := a.size downto 1 do begin
			if (i - difference) > 0 then
				sum := a.number[i] + b.number[i - difference] + carry
			else
				sum := a.number[i] + carry;

			carry := sum div 10;
			finalNumber[i] := sum mod 10;
		end;

		if carry <> 0 then begin
			overflow[1] := carry;
			for i := 1 to a.size do
				overflow[i + 1] := finalNumber[i];
			initLargeInt(ans, overflow, a.size + 1);
		end
		else
			initLargeInt(ans, finalNumber, a.size);
		
	end;

	procedure substractLargeInt(a, b : largeInt; var ans : largeInt);
		label 9999;
		var
			i, difference, carry, rest : integer;
			alarm : boolean;
			finalNumber : body;
	begin
		if a.size < b.size then
			goto 9999
		else begin

			difference := a.size - b.size;
			carry := 0;
			alarm := FALSE;

			for i := a.size downto 1 do begin
				if (i - difference) > 0 then begin
					if a.number[i] < b.number[i - difference] then begin
						rest := (10 + a.number[i]) -  b.number[i - difference] + carry;
						carry := -1;
					end
					else begin
						rest := a.number[i] - b.number[i - difference] + carry;
						carry := 0;
					end
				end
				else begin
					rest := a.number[i] + carry;
					carry := 0;
				end;

				finalNumber[i] := rest;
					

			end;
			initLargeInt(ans, finalNumber, a.size);
		end;
		9999:
			if alarm then
				writeln('HALT: Negative numbers not allowed!')
	end;

	procedure paddingLargeInt(var a : largeInt; padding : integer);
		var
			i : integer;
			w : largeInt;
	begin
		if (a.size + padding) > MAX_DIGIT then begin
			writeln('HALT: Overflow in padding');
		end
		else begin
			w.size := padding + a.size;
			for i := 1 to w.size do
				if i <= a.size then
					w.number[i] := a.number[i]
				else
					w.number[i] := 0;

			copyLargeInt(w, a);
		end;
			
	end;

	procedure intToLargeInt(n : integer; var ans : largeInt);
		var
			i, dumb, count : integer;
	begin
		count := 1; dumb := n;
		while n <> 0 do begin
			n := n div 10;
			count := count + 1;			
		end; 

		count := count - 1;
		i := count;

		ans.size := count;
		n := dumb;

		repeat			
			ans.number[i] := n mod 10;
			n := n div 10;			
			i := i - 1;
		until n = 0;

	end;

	function largeIntToInt(v : largeInt) : integer;
		var
			i, ans, exp : integer;
	begin
		ans := 0;
		exp := 1;
		for i := v.size downto 1 do begin			
			ans := ans + (exp * v.number[i]);
			exp := exp * 10;
		end;
		largeIntToInt := ans;
	end;

	procedure karatsubaOffman(u, v : largeInt; var ans : largeInt);
		var
			mid, prod : integer;
			u1, u2, v1, v2, a, b, c, d, e, p, q, r: largeInt;
	begin
		if u.size < 3 then begin
			prod := largeIntToInt(u) * largeIntToInt(v);
			intToLargeInt(prod, ans);
		end
		else begin
			mid := u.size div 2;
			
			sliceLargeInt(u, 0, mid, u1);
			sliceLargeInt(u, mid, u.size, u2);

			sliceLargeInt(v, 0, mid, v1);
			sliceLargeInt(v, mid, v.size, v2);

			karatsubaOffman(u1, v1, p);
			karatsubaOffman(u2, v2, q);

			addLargeInt(u1, u2, a);
			addLargeInt(v1, v2, b);

			karatsubaOffman(a, b, r);

			substractLargeInt(r, p, c);
			substractLargeInt(c, q, d);

			paddingLargeInt(p, u.size);
			paddingLargeInt(d, mid);

			addLargeInt(p, d, e);
			addLargeInt(e, q, ans);

		end;

	end;

	procedure test();
		var
			u, v, w, x, y, z, p, q, r, a, b, c, d, e, f : largeInt;
			n, s : integer;
	begin

		intToLargeInt(2345, u);

		write('u = ');
		displayLargeInt(u, FALSE);
		writeln();

		intToLargeInt(6789, v);

		write('v = ');
		displayLargeInt(v, FALSE);
		writeln();

		n := u.size;
		s := n div 2;

		sliceLargeInt(u, 0, s, w);
		write('w = ');
		displayLargeInt(w, FALSE);
		writeln();

		sliceLargeInt(u, s, n, x);
		write('x = ');
		displayLargeInt(x, FALSE);
		writeln();

		sliceLargeInt(v, 0, s, y);
		write('y = ');
		displayLargeInt(y, FALSE);
		writeln();

		sliceLargeInt(v, s, n, z);
		write('z = ');
		displayLargeInt(z, FALSE);
		writeln();

		intToLargeInt(1541, p);

		write('p = ');
		displayLargeInt(p, FALSE);
		writeln();

		intToLargeInt(4005, q);

		write('q = ');
		displayLargeInt(q, FALSE);
		writeln();

		addLargeInt(w, x, a);
		write('a = ');
		displayLargeInt(a, FALSE);
		writeln();

		addLargeInt(y, z, b);
		write('b = ');
		displayLargeInt(b, FALSE);
		writeln();

		intToLargeInt(10608, r);

		write('r = ');
		displayLargeInt(r, FALSE);
		writeln();

		substractLargeInt(r, p, c);
		write('c = ');
		displayLargeInt(c, FALSE);
		writeln();
		substractLargeInt(c, q, d);
		write('d = ');
		displayLargeInt(d, FALSE);
		writeln();

		paddingLargeInt(p, n);
		write('p = ');
		displayLargeInt(p, FALSE);
		writeln();

		paddingLargeInt(d, s);
		write('d = ');
		displayLargeInt(d, FALSE);
		writeln();

		addLargeInt(p, d, e);
		addLargeInt(e, q, f);
		write('f = ');
		displayLargeInt(f, FALSE);
		writeln();
		
	end;

begin

	driver(x, y);	
	karatsubaOffman(x, y, ans);
	displayLargeInt(ans, TRUE);

end.		