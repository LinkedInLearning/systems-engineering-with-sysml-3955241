private import ConstraintDef::*;
requirement def <Req01> CookingTemperatureRequirement {
	doc 
	/* The Oven shall heat up to 533 kelvin. 
	*/
	subject testOven: Oven;
	require constraint CookingTemperature;
}
