private import RevisedConstraintDef::*;
private import SI::K;
requirement def <Req01> CookingTemperatureRequirement {
	doc 
	/* Assuming the Oven is on, it shall 
	* heat at least up to 533 kelvin . 
	*/
	subject testOven: Oven;
	assume constraint { testOven.isOn == true}
	require constraint { testOven.temperature == 533 [K]}
}
