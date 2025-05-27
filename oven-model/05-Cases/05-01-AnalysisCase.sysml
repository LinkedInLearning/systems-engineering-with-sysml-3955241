private import ScalarValues::*;
private import AnalysisDefs::*;

analysis def AnalyzeTempAccuracy {
	subject ovenModel1: Oven;
	
	calc tempOffset: TempOffset;
	
	return tempoffset: Number;
	
	objective ovenTempAccuracyAnalysis {
		doc
		/* Analyze oven's temperature accuracy' */
		requirement tempAccuracy: TempAccuracyRequirement;
	}
}
