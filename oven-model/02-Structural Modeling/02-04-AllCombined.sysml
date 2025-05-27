private import SI::PowerUnit;
private import SI::TemperatureDifferenceUnit;
private import ScalarValues::Integer;
part def Rack;
part def Drawer { 
	part extraRack: Rack;
}
part def HeatingElement { 
	attribute temperature: TemperatureDifferenceUnit;
}

part def Oven {
	attribute wattage: PowerUnit;
	attribute slotCount: Integer; 
	
	part rack: Rack;
	part drawer: Drawer;
	part heatingElement: HeatingElement;
}
part testOven: Oven;
