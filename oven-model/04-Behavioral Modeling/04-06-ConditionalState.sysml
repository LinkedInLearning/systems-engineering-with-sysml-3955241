private import ScalarValues::*;
action cooking {
	first start;
	then state poweredOn {
		entry action preheat {
			out attribute isAtRequiredTemp: Boolean;
		}
	
	if preheat.isAtRequiredTemp then preheated;
	
	state preheated { 
		do action cook; 
	}
	exit action powerOff;
	} 
	then action coolDown;
	then done;
}
