part def Oven;
part def Person;
use case def 'Cook Food' {
	subject newOven: Oven;
	actor chef: Person;
	objective {
		doc /* A chef cooks food using newOven */
	}
}
