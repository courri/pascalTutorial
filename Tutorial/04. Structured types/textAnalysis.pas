program textAnalysis(input, output);

	type
		range = 'a' .. 'z';

	var
		wd : string;
		counter : range;
		freqs : array [range] of integer;
		total, i : integer;
		percent : real;

	procedure init;
	begin
		for counter := 'a' to 'z' do
			freqs[counter] := 0;
		for i := 1 to total do begin
			freqs[wd[i]] := freqs[wd[i]] + 1;
		end;
	end;



begin
	read(wd);
	total := length(wd);
	init;
	writeln(total, ' characters read.');
	writeln('LETTER' : 9, 'FREQUENCY' : 14, 'PERCENT' : 13);
	for counter := 'a' to 'z' do begin
		if freqs[counter] <> 0 then begin
			percent := (freqs[counter] / total) * 100;
			writeln(counter : 6,  freqs[counter] : 12, percent : 17 : 2)
		end
	end;
end.