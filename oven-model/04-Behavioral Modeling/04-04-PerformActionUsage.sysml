private import ActionUsageDefs::*;
part oven: Oven {
	perform action CookFood {
		part controlBoard: ControlBoard {
			perform action displayStatus;
		} 
		part heatingElement: HeatingElement {
			perform action heatOven;
		} 
		part thermostat: Thermostat {
			perform action controlTemp;
		}
	}

}
