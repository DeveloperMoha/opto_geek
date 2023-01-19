import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:opto_geek/core/utils/app_constants.dart';
import 'package:opto_geek/domain/entity/accurity_entity.dart';
import 'package:opto_geek/domain/repository/accurity_repository.dart';
import 'dart:math' as math;

import 'package:opto_geek/presentation/resources/image_manager.dart';

class EChartTest implements BaseAccurityTestsRepository {
  @override
  AccurityResultModel getAccurityItems(AccurityModel accurityModel) {
    // e chart has e alphabet , default item dim is constant then user can change and pass in pars

    int nosOfItems = accurityModel.noOfColumns * accurityModel.noOfRows;

    double itemDim = accurityModel.itemDim;

    print("e chart");
    List<Widget> itemImageList = [];
    var svgImage = SvgPicture.asset(
      ImageManager.svgE,
      width: itemDim,
      height: itemDim,
      fit: BoxFit.contain,
    );
    int angleIndex = 0;
    for (int i = 0; i < nosOfItems; i++) {
      itemImageList.add(Container(
          padding: const EdgeInsets.all(1.0),
          child: Align(
            alignment: Alignment.center,
            child: Transform.rotate(
                angle: AppConstants.nintyAngles[angleIndex], child: svgImage),
          )));
      if (angleIndex == 4) {
        angleIndex = 0;
      } else {
        angleIndex++;
      }
    }

    return AccurityResultModel(
      noOfItems: nosOfItems,
      itemDimension: itemDim,
      accurityItems: itemImageList,
    );
  }
}
