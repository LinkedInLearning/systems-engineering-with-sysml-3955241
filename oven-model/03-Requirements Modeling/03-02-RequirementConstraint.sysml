private import SI::*;

package ConstraintDef {
	part def Oven {
		attribute temperature: TemperatureDifferenceUnit;
	}
	constraint def CookingTemperature {
		testOven: Oven;
		testOven.temperature == 533 [K] 
	}
}
