program nested;
var
	a, b : integer;

procedure outer;
var
	c, d : integer;

	procedure inner;
	var
		e, f : integer;
	begin

		e := 5;
		f := 6;

		writeln(e);
		writeln(f);
	end;
begin

	c := 3;
	d := 4;

	inner;
	writeln();
	writeln(a);
	writeln(b);
	writeln(c);
	writeln(d);
	writeln();
	inner;

end;
begin
	a := 1;
	b := 2;
	outer;
end.