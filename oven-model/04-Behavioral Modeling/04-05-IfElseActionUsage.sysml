part thermostat: Thermostat {
	attribute temperature: TemperatureDifferenceUnit;
	
	perform action heatOven; 
	
	perform action monitorHeating {
		attribute time : Integer;
		attribute isTimeOver: Boolean;
		attribute temperature: TemperatureDifferenceUnit; 
		
		action monitor if isTimeOver or temperature > 500 [K] {
			action resetTime terminate heatOven;
		} 
		else {
			action incrementTimer assign time := time + 1; 
		}
	}
}
