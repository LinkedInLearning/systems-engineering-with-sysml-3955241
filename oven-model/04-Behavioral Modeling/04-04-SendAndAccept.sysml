part oven: Oven { 
	part thermostat: Thermostat {
		port dataPort;
		perform action measureTemp { out tempData: Data; }
		action updateControlBoard {
			action updateTemp 
			send measureTemp.tempData
			via dataPort
			to controlBoard;
		}
	}
	part controlBoard: ControlBoard {
		port dataPort;
		action acceptUpdate{
			action acceptTempData
			accept tempData: Data
			via dataPort;
		}
	}
}
