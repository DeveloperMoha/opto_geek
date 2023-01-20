import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:opto_geek/domain/entity/accurity_entity.dart';
import 'package:opto_geek/domain/repository/accurity_repository.dart';

import '../../../core/utils/app_constants.dart';

class AlphapeticChart implements BaseAccurityTestsRepository {
  @override
  AccurityResultModel getAccurityItems(AccurityModel accurityModel) {
    // alphapitic chart , default item dim is constant then user can change and pass in pars
    Random random = Random();
    int nosOfItems = accurityModel.noOfColumns * accurityModel.noOfRows;

    double itemDim = accurityModel.itemDim;

    print("=================================alphapet chart");
    List<Widget> itemImageList = [];
    Widget svgImage(image) => SvgPicture.asset(
          image,
          width: itemDim,
          height: itemDim,
          fit: BoxFit.contain,
        );

    for (int i = 0; i < nosOfItems; i++) {
      print("====${random.nextInt(AppConstants.alphabetList.length)}");
      itemImageList.add(Container(
          padding: const EdgeInsets.all(1.0),
          child: Align(
            alignment: Alignment.center,
            child: svgImage(AppConstants.alphabetList[
                random.nextInt(AppConstants.alphabetList.length)]),
          )));
    }

    return AccurityResultModel(
      noOfItems: nosOfItems,
      itemDimension: itemDim,
      accurityItems: itemImageList,
    );
  }
}
