private import UsecaseDefs::*;

use case def HeatOven {
	objective {
		doc /* Heat oven to a certain temp */
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
}

