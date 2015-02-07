program Kolmogorov(input, output);

	const
		MAX_SIZE = 1000;

	type
		range = 0 .. MAX_SIZE;
		data = array[range] of real;

	var
		identifier : string;
		dataArray : data;
		i, size : integer;
		sum : real;

	procedure getData;
	begin
		i := 0;
		read(identifier);
		while not EOF do begin
			read(dataArray[i]);
			i := i + 1;
		end	
	end;

	procedure formatColumn(key : string; val : real);
		var
			spacesColumn : integer;
	begin
		spacesColumn := 17;
		writeln(key, ' ' : spacesColumn - length(key), '|', '' : 5, val : 5:2, ' ' : spacesColumn - 12);
	end;

	function getAverage() : real;
	begin
		sum := 0.0;
		for i := 0 to size do begin
			sum := sum + dataArray[i];
		end;
		getAverage := sum / size;
	end;

	function getMedian() : real;
		var
			a, b : real;
	begin
		if size mod 2 <> 0 then
			getMedian := dataArray[(size) div 2]
		else begin
			a := size div 2;
			b := (size div 2) + 1;
			getMedian := (a + b) / 2;
		end; 
	end;

	function getMode() : real;
		var
			mode : real;
			temp, temp1 : integer;
	begin
		mode := dataArray[0];
		temp := 1;
		temp1 := 1;
		for i := 1 to size - 1 do begin
			if dataArray[i - 1] = dataArray[i] then
				temp := temp + 1
			else
				temp := 1;
			if temp >= temp1 then begin
				mode := dataArray[i];
				temp1 := temp
			end;
		end;
		getMode := mode		
	end;

	function getDeviation(var variance : real) : real;
		var
			summation, avg : real;
	begin
		summation := 0.0;
		avg := getAverage();
		for i := 1 to size do
			summation := summation + sqr(avg - dataArray[i]);
		variance := summation / size;
		getDeviation := sqrt(variance);
	end;

	procedure swap(var a, b : real);
		var
			temp : real;
	begin
		temp := a; a := b; b := temp		
	end;

	procedure shellSort(var v : data);

		var
			jump, n, m : range;
			swapped : boolean;

	begin
		jump := size;

		while jump > 1 do begin
			
			jump := jump div 2;
			repeat
				swapped := false;

				for m := 0 to (size - jump) do begin
					n := m + jump;
					if v[m] > v[n] then begin
						swap(v[m], v[n]);
						swapped := true;
					end;
				end;
				
			until not swapped;

		end;
		
	end;

	procedure outputResults();
		var
			min, max, variance : real;
	begin

		min := dataArray[1];
		max := dataArray[size];
		variance := 0.0;

		writeln('-----------------------------------');
		writeln(identifier);
		writeln('-----------------------------------');

		formatColumn('MEAN', getAverage());
		formatColumn('MEDIAN', getMedian());
		formatColumn('MODE', getMode());
		formatColumn('STD DEVIATION', getDeviation(variance));
		formatColumn('VARIANCE', variance);
		formatColumn('SUM', sum);
		formatColumn('MIN', min);
		formatColumn('MAX', max);
		formatColumn('RANGE', max - min);
		formatColumn('COUNT', size);

		writeln('-----------------------------------');

		i := 0;
	end;	

begin
	getData;
	size := i;
	shellSort(dataArray);
	outputResults();	
end.