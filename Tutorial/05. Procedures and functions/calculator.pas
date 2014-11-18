{
	Syntax:

		<calculation> ::= <expression> ";" | <expression> "," <calculation>
		<expression>  ::= <term> | <term> <arithmetic> <expression>
		<arithmetic>  ::= "+" | "-"
		<term>        ::= <factor> | <factor> <algebraic> <term>
		<algebraic>   ::= "*" | "/"
		<factor>      ::= <number> | "(" <expression> ")"
		<number>      ::= <digit> | <digit> <number> | <number> "." <number>
		<digit>       ::= "0" | "1" | "2" | "3" | "4" | "5" | "6" | "7" | "8" | "9"

	Usage:
		INPUT: 180 / (2 * 3.14159), 16 * 62.5 * 27, 169 * (5 + 8);
		OUTPUT:
					28.647913
				27000
				 2197
}

program calculator(input, output);

(* ====================== GLOBAL CONSTANTS ==================== *)

	const
		TERMINATOR = ';';
		SEPARATOR = ',';

(* ===================== GLOBAL VARIABLES ===================== *)

	var
		nextchar : char;
		nextpos : integer;
		result : real;

(* ========================= FUNCTIONS ======================== *)

	function addition(a, b : real) : real;
	begin
		addition := a + b
	end;

	function substraction(a, b : real) : real;
	begin
		addition := a - b
	end;

(* ======================== PROCEDURES ======================== *)

	procedure readchar(var ch : char,
					   var charpos : integer);

		const
			BLANLK = ' ';

	begin
		repeat

			if eoln then
			begin
				charpos := 0;
				ch := BLANLK;
				readln();
			end

			else
			begin
				charpos := succ(charpos);
				read(ch);
			end;

		until ch <> BLANLK;
	end;

	procedure reporterror(var errchar : char,
						  var errcharpos : integer);

		const
			MARKER = '^';

	begin
		writeln(MARKER : errcharpos);
		while not (errchar = SEPARATOR) or (errchar = TERMINATOR) do
			readchar(errchar, errcharpos)
	end;

	procedure readnumer(var numchar : char,
						var numpos : integer,
						var numvalue : real);

		const
			POINT = '.';
			RADIX = 10;

		var
			count, scale : integer;

	begin

		numvalue := 0;
		while('0' <= numchar) and (numchar < chr(ord('0') + RADIX)) do
		begin
			numvalue := RADIX * numvalue + ord(numchar) - ord('0');
			readchar(numchar, numpos)
		end;

		if numchar = POINT then
		begin
			readchar(numchar, numpos);
			scale := 0;
			while('0' <= numchar) and (numchar < chr(ord('0') + RADIX)) do
			begin
				numvalue := RADIX * numvalue + ord(numchar) - ord('0');
				readchar(numchar, numpos);
				scale := succ(scale);
			end;

			for count := 1 to scale do
				numvalue := numvalue / RADIX;

		end;
		
	end;

	procedure readexpression(var exprchar : char,
							 var exprvalue : real);
		const
			PLUS = '+';
			MINUS = '-';

		var
			addop : char;
			nexttermval : real;

	begin
		readterm(exprchar, exprvalue);

		while (exprchar = PLUS) or (exprchar = MINUS) do
		begin

			addop = exprchar;
			readchar(exprchar);
			readterm(exprchar, nexttermval);
			if addop = PLUS then
				exprvalue := addition(exprvalue, nexttermval);
			else
				exprvalue := substraction(exprvalue, nexttermval);
			
		end;	
	end;

(* ======================= MAIN PROGRAM ======================= *)

begin
	readchar(nextchar);
	while nextchar <> TERMINATOR do
	begin
		readexpression(nextchar, result);
		writeln(result);
		if nextchar = SEPARATOR then readchar(nextchar)
	end	
end.