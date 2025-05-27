private import UsecaseDefs::*;
use case def CookMeal {
	
	objective {
		doc /* Chef cooks a meal in the oven */
	}
	subject newOven: Oven {
		event occurrence <oven> cook: OvenCook;
	}
	actor chef: Person {
		event occurrence <chef> cook: ChefCook;
	}
	message startMessage from chef.cook.StartOven to newOven.cook.SwitchedOn; 
	message setTemp from chef.cook.SetTemp to newOven.cook.Heating;
	message preheat from newOven.cook.Heating to newOven.cook.Heated;
	message ovenReady from newOven.cook.Heated to chef.cook.PrepDone;
	message cook from chef.cook.PrepDone to newOven.cook.Cooking;
	message maintainTemp from newOven.cook.Cooking to newOven.cook.Cooking;
	message allDone from newOven.cook.Cooking to chef.cook.SwitchOff;
	message coolDown from chef.cook.SwitchOff to newOven.cook.Cooling;
}
