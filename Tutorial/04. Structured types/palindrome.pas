program palindrome(input, output);

	var
		name : string;
		i : integer;
		finish : boolean;

	function isPalindrome(var w : string) : boolean;

		label 0;

		var
			reverse : string;
			ans : boolean;
			j : integer;

	begin

		reverse := '';
		ans := true;

		for j := length(w) downto 1 do
			reverse := reverse + w[j];

		for i := 0 to length(w) do
			if reverse[i] <> w[i] then begin
				ans := false;
				goto 0;
			end;

		0:
			isPalindrome := ans;	

	end;

begin

	finish := false;

	while not finish do begin

		readln(name);		

		if isPalindrome(name) then begin
			finish := true;
			writeln(name, ' is a palindrome.');
		end;

	end;
	
end.