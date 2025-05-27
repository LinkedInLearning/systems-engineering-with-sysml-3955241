item def Fuel { attribute unitOfMeasure: Base::Anything; }

part def Oven { ref item fuel: Fuel; }

part def ElectricOven specializes Oven {
	ref item electricity redefines fuel {
		attribute electricUnit :>> unitOfMeasure: SI::PowerUnit;
	}
}
part def GasOven :> Oven {
	ref item gas :>> fuel {
		attribute gasUnit :>> unitOfMeasure: SI::VolumeUnit;
	}
}
