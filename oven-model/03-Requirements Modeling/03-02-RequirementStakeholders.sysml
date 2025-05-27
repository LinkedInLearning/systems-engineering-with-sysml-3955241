private import RevisedConstraintDef::*;
part def ProductDesign;
requirement def <Req01> CookingTemperatureRequirement {
	doc 
	/* Assuming the Oven is on, it shall 
	* heat at least up to 533 kelvin . 
	*/
	subject testOven: Oven;
	stakeholder productDesign: ProductDesign;
	assume constraint OvenIsOn;
	require constraint CookingTemperature;
}
