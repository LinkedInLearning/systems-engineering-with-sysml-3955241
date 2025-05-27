private import SI::*;
private import ScalarValues::Boolean;
package RevisedConstraintDef {
	part def Oven {
		attribute temperature: TemperatureDifferenceUnit;
		attribute isOn: Boolean;
	}
	constraint def OvenIsOn {
		testOven: Oven;
		testOven.isOn == true
	}
	constraint def CookingTemperature {
		testOven: Oven;
		testOven.temperature == 533 [K] 
	}
}
