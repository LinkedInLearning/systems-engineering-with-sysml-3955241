private import ScalarValues::*;
state OvenInUse {
	state poweredOn {
		attribute isAtRequiredTemp: Boolean;
		state preHeat;
		state cook;
		
		transition heatup 
		first preHeat
		if isAtRequiredTemp then cook;
	}
	state poweredOff;
	state cooling;
	
	transition operate 
		first poweredOn then poweredOff;
	transition wrapup 
		first poweredOff then cooling;
}
