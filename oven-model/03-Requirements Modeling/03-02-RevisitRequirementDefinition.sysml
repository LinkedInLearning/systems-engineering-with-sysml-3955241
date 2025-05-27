private import RevisedConstraintDef::*;
requirement def <Req01> CookingTemperatureRequirement {
	doc 
	/* Assuming the Oven is on, it shall 
	* heat at least up to 533 kelvin . 
	*/
	subject testOven: Oven;
	assume constraint OvenIsOn;
	require constraint CookingTemperature;
}
