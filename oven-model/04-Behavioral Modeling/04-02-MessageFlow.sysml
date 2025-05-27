private import PowerSystemDefs::*;

occurrence PowerOn {
	part controlBoard: ControlBoard {
		event occurrence sendSignal;
	}
	part powerIndicator: PowerIndicator {
		event occurrence sendSignal;
		event occurrence receiveSignal;
	}
	
	message powerOnSignal
		from controlBoard.sendSignal
		to powerIndicator.receiveSignal;
	
	message switchOnLED 
		from powerIndicator.sendSignal
		to powerIndicator.receiveSignal;
	
	message powerOffSignal
		from controlBoard.sendSignal
		to powerIndicator.receiveSignal;
	
	message switchOffLED 
		from powerIndicator.sendSignal
		to powerIndicator.receiveSignal;
}
