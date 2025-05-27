item def Fuel;
part def Oven {
	ref item fuel: Fuel;
}

part def ElectricOven specializes Oven {
	ref item electricity redefines fuel;
}
part def GasOven :> Oven {
	ref item gas :>> fuel;
}
