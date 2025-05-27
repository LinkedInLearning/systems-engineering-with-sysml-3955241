action def Cook {
	action switchOn { out item current; }
	action heatOven { in item current; out item heat; } 
	action cookFood { in item heat; }
	
	bind switchOn.current = heatOven.current;
	bind heatOven.heat = cookFood.heat;

	first start then switchOn;
	first switchOn then heatOven;
	first heatOven then cookFood;
	first cookFood then done;
}
