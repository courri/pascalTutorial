program digit(input, output);
var
	number : longint;
	i : integer;

	function digits(n : longint): integer;
	begin
		if n < 10 then
			digits := 1
		else
			digits := 1 + digits(n div 10)		
	end;

	function kthdigit(var n : longint; i : integer) : integer;
	var
		count : integer;
		temp : longint;
	begin
		if digits(n) < i then
			kthdigit := 0
		else
		begin 
			count := 1;
			temp := 1;
			while count <= i do
			begin
				temp := n mod 10;
				n := n div 10;
				count := succ(count)
			end;
			kthdigit := temp;
		end		
	end;

begin
	write('Number: '); read(number);
	write('Index: '); read(i);
	writeln(kthdigit(number, i))
end.
