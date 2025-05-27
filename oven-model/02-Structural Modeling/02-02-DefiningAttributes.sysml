private import ScalarValues::Integer;
private import SI::PowerUnit;

part def Oven {
	attribute rackCount: Integer; 
	attribute wattage: PowerUnit;
}

part testOven: Oven;
