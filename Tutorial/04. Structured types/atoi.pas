program atoi(input, output);

	const
		MAX_LEN = 32;
		RADIX = 10;

	var
		jp, kp : 0 .. MAX_LEN;
		buffer : array [1 .. MAX_LEN] of char;
		num : integer;

begin

	kp := 1;

	while buffer[kp] <> '0' do begin
		read(buffer[kp]);
		writeln(buffer[kp]);
		kp := kp + 1;
	end;

end.
