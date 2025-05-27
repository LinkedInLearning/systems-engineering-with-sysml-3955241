private import OvenDefs::*;
private import CookingDefs::*;
occurrence testCooking: Cooking {
	timeslice preheat: Preheat;
	timeslice cook: Cook;
	timeslice cool: Cool;
	
	ref part newOven: Oven;
}
