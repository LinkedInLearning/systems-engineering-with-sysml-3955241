private import ScalarValues::*;
private import SI::*;
action monitorOven {
	in time : Integer;
	in isTimeOver: Boolean; 
	in temperature: TemperatureDifferenceUnit;
	
	action incrementTime while temperature < 500 [K] { 
		assign time := time + 1; 
	} until not isTimeOver;
}
