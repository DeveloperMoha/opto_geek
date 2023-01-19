import 'dart:math' as math;

class AppConstants {
  static int noOfRows = 1;
  static int noOfColumns = 1;
  static double itemDimInPx = 40.0; //

  static const List<String> chartTypes = [
    "C Chart",
    "E Chart",
    "eAlphabetChart",
    "eSentencesChart",
    "numeralChart",
    "pediatricChart",
    "leaFigureChart",
  ];
  static int selectedChartIndex = 1;
  static const List<double> nintyAngles = [
    math.pi / 2, // 270 degree
    -math.pi, // 180 degree
    -math.pi / 2, //90 degree
    math.pi / 2, // 270 degree
    math.pi, // 0 degree
  ];
}
