// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class AccurityStates {}

class InitialAccurityState extends AccurityStates {}

class NoOfRowsState extends AccurityStates {
  int noOfRows;
  NoOfRowsState({
    required this.noOfRows,
  });
}

class NoOfColumnsState extends AccurityStates {
  int noOfColumns;
  NoOfColumnsState({
    required this.noOfColumns,
  });
}

class AccurityDimState extends AccurityStates {
  double accurityDim;
  AccurityDimState({
    required this.accurityDim,
  });
}

class AccurityChartTypeState extends AccurityStates {
  int chartTypeIndex;
  AccurityChartTypeState({
    required this.chartTypeIndex,
  });
}
