action def TestOven {
	in isTimeOver: ScalarValues::Boolean;
	
	//actions 
	action monitorTime;
	action stopHeat;
	
	//sequence of actions
	first start then monitorTime; 
	first monitorTime;
	then decide decisionNode;
	if isTimeOver then stopHeat;
	if not isTimeOver then decisionNode; 
	first stopHeat then done;
}
