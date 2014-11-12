program sets(input, output);

type
	food = (apples, strawberries, bananas, nuts, icecream, cream, sugar, ice, passionfruit);
	dessert = set of food;

var
	sundae, passion : dessert;

begin
	passion := [nuts .. passionfruit]
	sundae := [apples .. nuts];
end.