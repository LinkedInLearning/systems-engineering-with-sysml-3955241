private import PowerSystemDefs::*;

part def Oven {
	part terminalBlock: TerminalBlock {
		port powerPort: PowerPort;
	}
	part controlBoard: ControlBoard {
		port powerPort: ~PowerPort;
	}
	interface powerInterface: PowerInterface
		connect terminalBlock.powerPort 
		to controlBoard.powerPort;
}
