program decline;
(* calculates and prints depreciation schedule for an asset *) 
var 
	cost,salvage,book,loss,totaldep,rate,ysum,diff : real;
	life,year : 0 .. 9999;
	mode: 1 .. 3; (* number of method chosen *) 
begin
	(* user input *)
	write('cost of asset? ');
	read(cost);
	write('salvage value? ');
	read(salvage);
	write('life in years? ');
	read(life);
	writeln('method of depreciation: ');
	write('1=straight line, 2=declining, 3=sum of years? '); 
	read(mode);
	(* headings *)
	writeln;
	writeln('years': 10,'annual': 10, 'total': 10, 'book': 10); 
	writeln(' ': 10, 'depreciation':20, 'value': 10);
	writeln;
	(* initialization *)
	book := cost;
	loss := 0; totaldep:= 0;
	(* loss is depreciation this year,
	totaldep is total depreciation to date *)
	year := 0;
	rate := 2 / life;
	ysum := life*(life+1)/2; 
	diff := cost - salvage; 
	repeat (* main loop *)
	(* sum of years *)
		writeln(year:10,loss:10:2,totaldep: 10:2,book: 10:2); 
		case mode of
			1: loss := diff / life; 
			2: begin
				loss := rate * book;
				if (book-loss) < salvage then
					loss := book - salvage;
				(* correction for overshoot in mode 2 only *)
			end;
			3: loss := (life-year)/ysum*diff;
		end; (* of case *)
		book := book - loss; 
		totaldep := totaldep + loss;
		year := year + 1;
	until year > life;
	writeln('end of job.'); 
end.