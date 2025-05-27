private import ScalarValues::*;
private import SI::*;
action monitorOven {
	in time : Integer;
	in isTimeOver: Boolean; 
	in temperature: TemperatureDifferenceUnit;
	
	action incrementTime loop { 
		assign time := time + 1; 
	} until not isTimeOver;
}
