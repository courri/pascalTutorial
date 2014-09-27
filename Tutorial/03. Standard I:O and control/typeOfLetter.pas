program typeOfLetter(input, output);
var
	letter : char;

begin
	write(': ');
	read(letter);
	case letter of
		'a', 'e', 'i', 'o', 'u' : write('Vowel');
		'.', ',', ';', '!', '?' : write('Punctuation');
		else
			begin
				if (letter >= 'a') and (letter <= 'z')
					then 
						write('Consonant')
					else
						write('Strange character')
			end
	end;
	writeln('.')
end.