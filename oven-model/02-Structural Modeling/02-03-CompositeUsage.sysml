private import SI::PowerUnit;
private import ScalarValues::Integer;

part def Oven {
	attribute wattage: PowerUnit;
	attribute rackCount: Integer; 
}

part def Rack;

part testOven: Oven {
	part racks[2]: Rack;
}
