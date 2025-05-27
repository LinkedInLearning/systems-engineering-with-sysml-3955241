private import ActionUsageDefs::*;
part thermostat: Thermostat {
	perform action heatOven;
	
	perform action monitorHeating { 
		action stopHeating terminate heatOven;
	}
}
