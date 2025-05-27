action def TestOven {
	in isTimeOver: ScalarValues::Boolean;
	//actions
	action monitorTime;
	action stopHeat;
	action checkFood;
	action resetTimer;
	
	//sequence of actions
	first start then monitorTime; 
	first monitorTime;
	then decide;
	if isTimeOver then resetTimer;
	if not isTimeOver then checkFood;
	first checkFood; 
	then merge mergeNode; 
	first resetTimer then mergeNode;
	first mergeNode then stopHeat;
	first stopHeat then done;
}
