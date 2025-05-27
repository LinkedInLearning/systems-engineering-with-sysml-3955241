private import SI::*;

part def HeatingElement {
	attribute temperature: TemperatureDifferenceUnit; 
}

part def Oven {
	part heatingElement: HeatingElement;
}

action def setupTest {
	in testOven: Oven;
	assign testOven.heatingElement.temperature := 500 [K];
}
