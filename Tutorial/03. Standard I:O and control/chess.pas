program chess(input, output);
const
	ZERO = 0;
	ONE = 1;
	BLACK = 'B';
	WHITE = 'W';
	MODULO = 2;
	COLUMNS = 8;
	ROWS = 8;
var
	row, col : integer;
	posa, posb : integer;
	counter : integer;
begin
	write('(a,b) => ');
	read(posa, posb);
	if ((posa < 1) or (posa > 8) or (posb < 1) or (posb > 8)) then
		writeln('Invalid numbers')
	else
	begin
		counter := 0;
		for row := 1 to ROWS do
		begin
			for col := 1 to COLUMNS do
			begin
				if counter = 0 then
				begin
					if (row = posa) and (col = posb) then
						write('* ')
					else
						write('B ');
				end				
				else
				begin
					if (row = posa) and (col = posb) then
						write('* ')
					else
						write('W ');
				end;				
				counter := succ(counter) mod 2			
			end;
			writeln();
		end;		
	end;		
end.