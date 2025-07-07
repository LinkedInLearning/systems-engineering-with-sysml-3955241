action def BrewCoffee {

	action fill {
		out water;
	}
	action brew {
		in water ;
	}
	succession flow 
		fill.water to brew.water;
}

