action cooking {
	first start;
	
	then state poweredOn {
		entry action preheat; 
		
		state preheated {
			do action cook; 
		}
		
		exit action powerOff;
	} 
	then action coolDown;
	then done;
}
