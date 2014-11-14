program sets(input, output);

type
	food = (apples, strawberries, bananas, nuts, icecream, cream, sugar, ice, passionfruit);
	dessert = set of food;

var
	sundae, passion, loefoi : dessert;

begin
	passion := [nuts .. passionfruit];
	sundae := [apples .. nuts];
	loefoi := passion * sundae; (* UNION *)
	loefoi := passion - sundae; (* INTERSECTION *)
	writeln([] <= passion); (* CONTAINS EMPTY SETs *)
	writeln(nuts in passion); (* INCLUSION *)
end.