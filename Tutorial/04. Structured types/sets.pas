{
	A set is a collection of objects of the same type.
	If S is a set of type T, then every object in T may
	or may not belong to S.

	The empty set: []
	Basic operations are:
		+  Union
		*  Intersection
		-  Difference
		=  Equality
		<> Inequality
		<= Is contained in
		>= Contains
		In Inclusion
}

program sets(input, output);

	type
		food = (apples, strawberries, bananas, nuts, icecream, cream, sugar, ice, passionfruit, apple,
			cinnamon, flour);
		dessert = set of food;

	var
		sundae, applepie, passionDessert, flourPie : dessert;

begin

	sundae := [strawberries] + [ice .. ice];
	applepie := [apple, cream, sugar, cinnamon, flour];
	passionDessert := [passionfruit, flour, cinnamon, cream, icecream];

	flourPie := applepie * passionDessert;

	writeln(sundae = applepie);
	writeln([1,2,3] = [3,2,1]);
	writeln([1,2,3] <> [4,5,6]);
	writeln([1] <= [1..4]);
	writeln(flour in flourPie);
	
end.