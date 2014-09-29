(* This porgram converts text into numbers,
   It can be used to read numbers from text, and
   give internal reprentation of those symbols
*)

program convert(input, output); 
{ Convert an appropriately formed character string to a real number,
  It reads just the first number in a line of text 
}
const
	BLANK = ' ';
	POINT = '.';
	RADIX = 10;
var
	result : real;
	scale : integer;
	ch : char;
	is_real : boolean;
	integer_part : integer;
	times : integer;

begin
	ch := BLANK;
	while not (('0' <= ch) and (ch < chr(ord('0') + (radix)))) do
		read(ch);
	result := 0;
	integer_part := 0;
	while (('0' <= ch) and (ch < chr(ord('0') + (radix)))) do
		begin
			result := radix * result + ord(ch) - ord('0');
			integer_part := succ(integer_part);
			read(ch);				
		end;
	if ch = POINT then
		begin
			is_real := true;
			scale := 0;
			read(ch);
			while (('0' <= ch) and (ch < chr(ord('0') + (radix)))) do
				begin
					result := radix  * result + ord(ch) - ord('0');
					read(ch);
					scale := succ(scale)
				end;
			times := scale;
			while scale > 0 do
				begin
					result := result / radix;
					scale := pred(scale)
				end;
		end;
	if is_real then
		writeln(result:integer_part:times)
	else
		writeln(round(result))
end.