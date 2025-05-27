private import ActionUsageDefs::*;
private import SI::*;
private import ScalarValues::*;
private import CollectionFunctions::*;

part newOven: Oven {
	attribute tempSeries[*]: TemperatureDifferenceUnit;
	attribute n: Integer; 
	action heatOven { in attribute temperature: TemperatureDifferenceUnit; }
	action testOven { 
		assign n := tempSeries -> size(); 
		first start;
		then action testCycles { 
			action test for i: Integer in 1..n { 
				perform heatOven {in temperature = tempSeries#(i);}
			}
		}
		then done;
	}
}
