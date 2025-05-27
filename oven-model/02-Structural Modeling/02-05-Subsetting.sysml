part def Rack {
	attribute depth;
	attribute width;
}

part def Oven {
	part racks: Rack[2];
	part topRack subsets racks;
	part bottomRack :> racks;
}
