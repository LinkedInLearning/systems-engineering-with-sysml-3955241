part def Oven {
	part terminalBlock: TerminalBlock {
		out powerOut: Current;
	}
	part controlBoard: ControlBoard {
		in powerIn: Current;
	}
	flow powerFlow of current:Current
	from terminalBlock.powerOut
	to controlBoard.powerIn;
}
