package UsecaseDefs {
	part def Oven;
	part def Person;
	
	occurrence def OvenCook {
		event occurrence SwitchedOn;
		then event occurrence Heating;
		then event occurrence Heated;
		then event occurrence Cooking;
		then event occurrence Cooked;
		then event occurrence Cooling;
	}
	
	occurrence def ChefCook {
		event occurrence StartOven;
		then event occurrence SetTemp;
		then event occurrence Prepare;
		then event occurrence PrepDone;
		then event occurrence SwitchOff;
	}
}
