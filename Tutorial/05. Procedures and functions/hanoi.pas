{
	      -					|				|
	     ---				|				|
	    -----				|				|
	   -------				|				|
	  ---------				|				|
	 -----------			|				|
	-------------			|				|
 =======================================================

 The objective is to move the 8 disks to the rightmost needle
 using the middle one as temporary stage, but ensuring that at
 any moment there is a bigger disks on top of a little one.

 movetower(n, 1, 3, 2) =
 						movetower(n - 1, 1, 2, 3)
 						movedisk(1, 3)
 						movetower(n - 1, 2, 3, 1)

 	INPUT: 3
 	OUTPUT:
 		1 -> 3
 		1 -> 2
 		3 -> 2
 		1 -> 3
 		2 -> 1
 		2 -> 3
 		1 -> 3
}

program hanoi(input, output);
(* ================== GLOBAL VARIABLES ================== *)
var
	disks : integer; { Number of disks }

procedure movetower(disks, from, destiny, temporary : integer);
(* ================== NESTED PROCEDURES ================== *)
	procedure movedisk(initial_spot, final_spot : integer);
	begin
		writeln(initial_spot, ' => ', final_spot)
	end;
begin
	if disks > 0 then
	begin
	movetower(disks - 1, from, temporary, destiny);
	movedisk(from, destiny);
	movetower(disks - 1, temporary, destiny, from)		
	end
end;

begin
	writeln('Welcome to HANOI SOLVER 3000.');
	write('Number of disks: ');
	read(disks);
	movetower(disks, 1, 3, 2)
end.