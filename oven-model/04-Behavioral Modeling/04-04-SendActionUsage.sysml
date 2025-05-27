private import ActionUsageDefs::*;
part oven: Oven {
	part controlBoard: ControlBoard;
	part thermostat: Thermostat {
		port dataPort;
		perform action measureTemp { out tempData: Data; }
		action updateControlBoard{
			action updateTemp 
			send measureTemp.tempData
				via dataPort
				to oven.controlBoard;
		}
	}
}
