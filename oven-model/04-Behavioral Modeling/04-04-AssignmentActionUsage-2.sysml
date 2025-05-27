private import SI::*;
private import ScalarValues::Integer;
part def HeatingElement {
	attribute temperature: TemperatureDifferenceUnit; 
}
part def Oven {
	attribute testCount: Integer := 0;
	part heatingElement: HeatingElement;
}
action def setupTest {
	in testOven: Oven;
	assign testOven.heatingElement.temperature := 500 [K];
	assign testOven.testCount := testOven.testCount + 1;
}
