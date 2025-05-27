private import SI::*;
private import ScalarValues::Number;

package AnalysisDefs {
	part def Person;
	
	part def Oven {
		attribute temperature: TemperatureDifferenceUnit;
	}
	constraint def CookingTemperature {
		testOven: Oven;
		testOven.temperature == 533 [K] 
	}
	requirement def TempAccuracyRequirement {
		doc 
		/* The Oven shall have temp accuracy within + or - 10 degree C*/
		subject testOven: Oven;
		require constraint CookingTemperature;
	}
	
	calc def TempOffset {
		in attribute thermostatReading: TemperatureDifferenceUnit ;
		in attribute thermometerReading : TemperatureDifferenceUnit;
		return offset: Number = thermostatReading - thermometerReading;
	}

}
