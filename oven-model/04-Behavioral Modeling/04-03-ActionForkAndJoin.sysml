action def TestOven {
	//actions and control nodes
	action powerOn;
	action setTemperature;
	action setTimer;
	action monitorOven;
	join joinNode;
	
	//sequence of actions
	first start then powerOn;
	first powerOn;
	then fork;
	then setTemperature;
	then setTimer;
	first setTemperature then joinNode;
	first setTimer then joinNode;
	first joinNode then monitorOven; 
	first monitorOven then done; 
}
