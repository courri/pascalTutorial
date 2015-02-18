program basicAlgorithms(input, output);
	const
		MIN = 1; 
		MAX = 10;
	type
		sequence = array [MIN .. MAX] of integer;
	var
		s : sequence;
		exercise : integer

	procedure populate();
		var i : integer;
	begin
		for i := MIN to MAX do
			s[i] := i
	end;

	{
		Corresponds to 1.2.1 
	}
	function smallestValueWhile(var s : sequence) : integer;
		var ans, i : integer;
	begin
		i := MIN;
		ans := s[i];
		while i <= MAX do begin
			if s[i] < ans then
				ans := s[i];
			i := i + 1
		end;
		smallestValueWhile := ans
	end;

begin
	populate();
	write('Enter exercise number: '); read(exercise);
	case exercise of
		1 : 
			write(smallestValueWhile(s))
		else 
			exercise := 1
	end
end.