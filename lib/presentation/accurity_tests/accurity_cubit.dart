import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opto_geek/core/utils/app_constants.dart';
import 'package:opto_geek/presentation/accurity_tests/accurity_states.dart';

class AccurityCubit extends Cubit<AccurityStates> {
  AccurityCubit(super.initialState);

  test() {
    print(
        "======Welcome col ${AppConstants.noOfColumns} row ${AppConstants.noOfRows}");
  }

  increaseRows() {
    if (AppConstants.noOfRows != 5) {
      AppConstants.noOfRows++;
      print(AppConstants.noOfRows);
      emit(NoOfRowsState(noOfRows: AppConstants.noOfRows));
    }
  }

  decreaseRows() {
    if (AppConstants.noOfRows != 1) {
      AppConstants.noOfRows--;
      print(AppConstants.noOfRows);
      emit(NoOfRowsState(noOfRows: AppConstants.noOfRows));
    }
  }

  increaseColumns() {
    if (AppConstants.noOfColumns != 8) {
      AppConstants.noOfColumns++;
      print(AppConstants.noOfColumns);
      emit(NoOfColumnsState(noOfColumns: AppConstants.noOfColumns));
    }
  }

  decreaseColumns() {
    if (AppConstants.noOfColumns != 1) {
      AppConstants.noOfColumns--;
      print(AppConstants.noOfColumns);
      emit(NoOfColumnsState(noOfColumns: AppConstants.noOfColumns));
    }
  }

  increaseAccurity() {
    if (AppConstants.itemDimInPx > 20) {
      AppConstants.itemDimInPx -= 10;
      print(AppConstants.itemDimInPx);
      emit(AccurityDimState(accurityDim: AppConstants.itemDimInPx));
    }
  }

  decreaseAccurity() {
    if (AppConstants.itemDimInPx < 150) {
      AppConstants.itemDimInPx += 10;
      print(AppConstants.itemDimInPx);
      emit(AccurityDimState(accurityDim: AppConstants.itemDimInPx));
    }
  }

  changeChartForword() {
    if (AppConstants.selectedChartIndex < AppConstants.chartTypes.length - 1) {
      AppConstants.selectedChartIndex++;

      emit(AccurityChartTypeState(
          chartTypeIndex: AppConstants.selectedChartIndex));
    }
  }

  changeChartBackword() {
    if (AppConstants.selectedChartIndex > 0) {
      AppConstants.selectedChartIndex--;

      emit(AccurityChartTypeState(
          chartTypeIndex: AppConstants.selectedChartIndex));
    }
  }
}
