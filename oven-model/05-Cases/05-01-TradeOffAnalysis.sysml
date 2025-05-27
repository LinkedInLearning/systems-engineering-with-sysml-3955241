private import ScalarValues::Number;
private import TradeStudies::*;
private import AnalysisDefs::*;

part def Oven { attribute temperature: SI::TemperatureDifferenceUnit; }
part electricOven: Oven;
part gasOven: Oven;

analysis OvenTempAccuracyAnalysis: TradeStudy {
	subject : Oven = (electricOven, gasOven);
	objective analyzeTempOffset: MinimizeObjective;
	calc :>> evaluationFunction {
		in ref alternative: Oven ;
		calc tempOffset: TempOffset;
		return :>> result: Number = tempOffset.offset;
	}
	return part :>> selectedAlternative: Oven;
}
