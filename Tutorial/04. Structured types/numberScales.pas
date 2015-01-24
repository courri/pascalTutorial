program numberScales(input, output);

	const
		MAX_RADIX = 10;
		MAX_LEN = 32;

	type
		radix = 2 .. MAX_RADIX;

	var
		datum : integer;
		scale : radix;

	procedure writenumber(num : integer; rad : radix);

		var
			jp, kp : 0 .. MAX_LEN;
			buffer : array[1 .. MAX_LEN] of char;

	begin

		if num < 0 then begin
			write('-');
			num := abs(num)
		end;

		kp := 0;

		repeat

			kp := kp + 1;
			buffer[kp] := chr(num mod rad + ord('0'));
			num := num div rad

		until num = 0;

		for jp := kp downto 1 do write(buffer[jp])
		
	end;

begin

	read(datum);
	writeln;

	for scale := 2 to MAX_RADIX do begin

		writenumber(datum, scale);
		writeln();

	end;

	writeln

end.