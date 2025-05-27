private import PowerSystemDefs::*;

occurrence PowerOn {
part controlBoard: ControlBoard {
	event occurrence sendSignal;
}
part powerIndicator: PowerIndicator {
	event occurrence receiveSignal;
}
message of powerSignal: Signal
from controlBoard.sendSignal
to powerIndicator.receiveSignal;
}
