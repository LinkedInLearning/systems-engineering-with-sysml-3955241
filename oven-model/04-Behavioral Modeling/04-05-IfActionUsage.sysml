private import ActionUsageDefs::*;
private import SI::*;

part thermostat: Thermostat {
	attribute temperature: TemperatureDifferenceUnit;
	perform action heatOven; 
	perform action monitorHeating { 
		action monitor if temperature > 500 [K] {
			action stopHeating terminate heatOven;
		} 
	}
}
