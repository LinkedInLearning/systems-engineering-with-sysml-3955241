action cooking {

first start;
then state poweredOn {
	state preHeat;
	state cook;
	state coolDown;
	
	transition heatup 
	first preHeat
	then cook;
	
	transition cooling
		first cook 
		then coolDown;
	
	} 
}
