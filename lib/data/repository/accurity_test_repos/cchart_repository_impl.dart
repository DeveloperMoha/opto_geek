import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:opto_geek/core/utils/app_constants.dart';
import 'package:opto_geek/domain/entity/accurity_entity.dart';
import 'package:opto_geek/domain/repository/accurity_repository.dart';

import 'package:opto_geek/presentation/resources/image_manager.dart';

class CChartTest implements BaseAccurityTestsRepository {
  @override
  AccurityResultModel getAccurityItems(AccurityModel accurityModel) {
    // c chart has c alphabet , default item dim is constant then user can change and pass in pars

    Random random = Random();
    int nosOfItems = accurityModel.noOfColumns * accurityModel.noOfRows;

    double itemDim = accurityModel.itemDim;
    print("c chart");
    List<Widget> itemImageList = [];
    var svgImage = SvgPicture.asset(
      ImageManager.svgC,
      width: itemDim,
      height: itemDim,
      fit: BoxFit.cover,
    );
    for (int i = 0; i < nosOfItems; i++) {
      itemImageList.add(Container(
          padding: const EdgeInsets.all(1.0),
          child: Align(
            alignment: Alignment.center,
            child: Transform.rotate(
                angle: AppConstants.nintyAngles[
                    random.nextInt(AppConstants.nintyAngles.length)],
                child: svgImage),
          )));
    }

    return AccurityResultModel(
      noOfItems: nosOfItems,
      itemDimension: itemDim,
      accurityItems: itemImageList,
    );
  }
}
