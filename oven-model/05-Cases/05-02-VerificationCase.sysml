private import ScalarValues::Number;
private import SI::*;

part def Oven { attribute tempOffset: Number; }

requirement def TempAccuracyRequirement {
	doc 
		/* The Oven’s temp offset shall be within +– 10Kelvin */
	subject oven: Oven;
	in tempOffset: Number;
	
	require constraint {
		tempOffset == oven.tempOffset and
		tempOffset <= 10 [K]
	}
}

verification def OvenTempAccuracyTest {
	requirement tempAccuracyRequirement: TempAccuracyRequirement;
	
	subject testOven: Oven;
	
	objective ovenTempVerificationObjective { 
		verify tempAccuracyRequirement; 
	}
	
	action collectData {
		in part testOven: Oven = OvenTempAccuracyTest::testOven;
		out tempOffsetMeasured: Number;
	}
	action processData {
		in tempOffsetMeasured: Number = collectData.tempOffsetMeasured;
		out tempOffsetProcessed: Number;
	}
	
	action evaluateData {
		in tempOffsetProcessed: Number = processData.tempOffsetProcessed;
		out verdict: VerdictKind = PassIf (
			tempAccuracyRequirement ( 
				oven = testOven, tempOffset = tempOffsetProcessed ));
	} 
	
	return verdict: VerdictKind = evaluateData.verdict;
}
