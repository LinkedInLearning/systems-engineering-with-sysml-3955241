private import ActionUsageDefs::*;
part controlBoard: ControlBoard {
	port dataPort;
	
	action acceptUpdate{
		action acceptTempData
		accept tempData: Data
		via dataPort;
	}
}
