import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:opto_geek/domain/entity/accurity_entity.dart';
import 'package:opto_geek/domain/repository/accurity_repository.dart';

import '../../../core/utils/app_constants.dart';

class NumeralChart implements BaseAccurityTestsRepository {
  @override
  AccurityResultModel getAccurityItems(AccurityModel accurityModel) {
    // numeral chart , default item dim is constant then user can change and pass in pars

    int nosOfItems = accurityModel.noOfColumns * accurityModel.noOfRows;

    double itemDim = accurityModel.itemDim;

    print("numeral chart");
    List<Widget> itemImageList = [];
    Widget svgImage(image) => SvgPicture.asset(
          image,
          width: itemDim,
          height: itemDim,
          fit: BoxFit.contain,
        );

    for (int i = 0; i < nosOfItems; i++) {
      itemImageList.add(Container(
          padding: const EdgeInsets.all(1.0),
          child: Align(
            alignment: Alignment.center,
            child: svgImage(AppConstants.numeralList[i]),
          )));
    }

    return AccurityResultModel(
      noOfItems: nosOfItems,
      itemDimension: itemDim,
      accurityItems: itemImageList,
    );
  }
}
