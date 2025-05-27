private import SI::*;
concern def SafetyConcern {
	subject oven: Oven;
	part def Person;
	
	stakeholder productDesigner: Person;
	
	attribute surfaceTemperature: TemperatureDifferenceUnit;
	
	require constraint {
		doc /* The oven's external surface temperature shall not exceed 300-degree Kelvin */
	}
}
