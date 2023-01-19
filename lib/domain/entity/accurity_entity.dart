// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AccurityModel {
  int noOfColumns;
  int noOfRows;
  double accurityFraction;
  double itemDim;
  String chartType;
  AccurityModel({
    required this.noOfColumns,
    required this.noOfRows,
    required this.accurityFraction,
    required this.itemDim,
    required this.chartType,
  });
}

class AccurityResultModel {
  int noOfItems;
  double itemDimension;
  List<Widget> accurityItems;
  AccurityResultModel({
    required this.noOfItems,
    required this.itemDimension,
    required this.accurityItems,
  });
}
