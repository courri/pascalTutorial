{

	The calculator program, reads arithmetic expressions following the next
	grammar, and calculates the value of those expressions according to the 
	arithmetic and algebraic laws embedded in the leading procedures in the
	program. The input expressions should be attached to the syntax showed,
	if not, the program would indicate the mistake using a ^ symbol. The output
	is divided into lines per expression.

	Note that the syntax does not include negative numbers in expression parsing.
	If an error is catched, the expression would be evaluated until the program
	encounters the error. With two or more errors, the behaviour is undefined.

	The syntax has been designed to facilitate analysis without backtracking.
	This means that the program can read a character at a time from the input
	medium and choose the correct course of action wthout ever going wrong
	and having to retrace its steps. For example, when a factor is expected,
	the next character must be digit or a left parentheses: any other character
	must be erroneous. The next character must be always be available for
	inspection. 

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
		     	28.65
 			 27000.00
  			  2197.00

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
		substraction := a - b
	end;

(* ======================== PROCEDURES ======================== *)

	procedure readchar(var ch : char; 
					   var charpos : integer);

		(* ========== CONSTANTS ========== *)

		const
			BLANLK = ' ';

	begin {readchar}
		repeat

			if eoln then begin
				charpos := 0;
				ch := BLANLK;
				readln();
			end

			else begin
				charpos := succ(charpos);
				read(ch);
			end;

		until ch <> BLANLK;
	end; {readchar}

	procedure reporterror(var errchar : char;
						  var errcharpos : integer);

		(* ========== CONSTANTS ========== *)

		const
			MARKER = '^';

	begin {reporterror}
		writeln(MARKER : errcharpos);

		while not (errchar = SEPARATOR) or (errchar = TERMINATOR) do
			readchar(errchar, errcharpos)
	end; {reporterror}

	procedure readnumber(var numchar : char;
						var numpos : integer;
						var numvalue : real);

		(* ========== CONSTANTS ========== *)

		const
			POINT = '.';
			RADIX = 10;

		(* ========== VARIABLES ========== *)

		var
			count, scale : integer;

	begin {readnumber}
		numvalue := 0;

		while('0' <= numchar) and (numchar < chr(ord('0') + RADIX)) do begin
			numvalue := RADIX * numvalue + ord(numchar) - ord('0');
			readchar(numchar, numpos)
		end;

		if numchar = POINT then begin
			readchar(numchar, numpos);
			scale := 0;

			while('0' <= numchar) and (numchar < chr(ord('0') + RADIX)) do begin
				numvalue := RADIX * numvalue + ord(numchar) - ord('0');
				readchar(numchar, numpos);
				scale := succ(scale);
			end;

			for count := 1 to scale do
				numvalue := numvalue / RADIX;
		end;		
	end; {readnumber}

	{
		An expression consists of terms and factors, while a factor may
		contain an expression, so this express the mutual recursive
		nature of the grammar. This means that expressions may be constructed
		recursively.
	}

	procedure readexpression(var exprchar : char;
							 var exprpos : integer;
							 var exprvalue : real);

		(* ========== CONSTANTS ========== *)

		const
			PLUS = '+';
			MINUS = '-';

		(* ========== VARIABLES ========== *)

		var
			addop : char;
			nexttermval : real;

		(* ====== NESTED PROCEDURES ====== *)

		procedure readterm(var termchar : char;
						   var termpos : integer;
						   var termvalue : real);

			(* ========== CONSTANTS ========== *)

			const
				MULTCHAR = '*';
				DIVCHAR = '/';

			(* ========== VARIABLES ========== *)

			var 
				mulop : char;
				nextfacval : real;

			procedure readfactor(var factorchar : char;
								 var factorpos : integer;
								 var factorvalue : real);

				(* ========== CONSTANTS ========== *)

				const
					RADIX = 10;
					LEFTPAREN = '(';
					RIGHTPAREN = ')';

			begin {readfactor}
				if ('0' < factorchar) and (factorchar < char(ord('0') + RADIX)) then
					readnumber(factorchar, factorpos, factorvalue)

				else if factorchar = LEFTPAREN then begin
					readchar(factorchar, factorpos);
					readexpression(factorchar, factorpos, factorvalue);

					if factorchar = RIGHTPAREN then
						readchar(factorchar, factorpos)

					else
						reporterror(factorchar, factorpos);
				end

				else begin
					reporterror(factorchar, factorpos);
					factorvalue := 0
				end;				
			end; {readfactor}

		begin {readterm}
			readfactor(termchar, termpos, termvalue);

			while (termchar = MULTCHAR) or (termchar = DIVCHAR) do begin				
				mulop := termchar;
				readchar(termchar, termpos);

				readfactor(termchar, termpos, nextfacval);
				if mulop = MULTCHAR then
					termvalue := termvalue * nextfacval
				else if nextfacval <> 0 then
					termvalue := termvalue / nextfacval
				else
					reporterror(termchar, termpos);
			end;			
		end; {readterm}

	begin {readexpression}
		readterm(exprchar, exprpos, exprvalue);

		while (exprchar = PLUS) or (exprchar = MINUS) do begin
			addop := exprchar;
			readchar(exprchar, exprpos);
			readterm(exprchar, exprpos, nexttermval);

			if addop = PLUS then
				exprvalue := addition(exprvalue, nexttermval)
			else
				exprvalue := substraction(exprvalue, nexttermval);			
		end;
	end; {readexpression}

(* ======================= MAIN PROGRAM ======================= *)

begin {calculator}
	nextpos := 0; (* Position of the character *)
	readchar(nextchar, nextpos);

	while nextchar <> TERMINATOR do begin
		readexpression(nextchar, nextpos, result);
		if (nextchar = SEPARATOR) or (nextchar = TERMINATOR) then begin
			writeln(result : 10  : 2);
			if nextchar = SEPARATOR then
				readchar(nextchar, nextpos)
		end

		else
			reporterror(nextchar, nextpos);
	end
end. {calculator}