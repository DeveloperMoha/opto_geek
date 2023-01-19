import 'package:flutter/material.dart';
import 'package:opto_geek/data/repository/accurity_test_repos/cchart_repository_impl.dart';
import 'package:opto_geek/domain/entity/accurity_entity.dart';
import 'package:opto_geek/domain/repository/accurity_repository.dart';
import 'package:opto_geek/domain/usecases/accurity_tests_usecases.dart';

import '../../data/repository/accurity_test_repos/echart_repository_impl.dart';
import '../resources/color_manager.dart';
import '../resources/common_widgets.dart';

Widget showAcurityBottomItem(
    itemText, mediaQueryWidth, itemIcon1, itemIcon2, function1, function2) {
  return Container(
    height: double.infinity,
    //margin: EdgeInsets.only(right: mediaQueryWidth * .01),
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
    child: Column(
      children: [
        showTitleText(itemText, textSize: (10.0 + mediaQueryWidth * .003)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(0),
                      minimumSize: Size.zero,
                      backgroundColor: ColorManager.white.withOpacity(.7),
                      foregroundColor: ColorManager.mainAppColor),
                  onPressed: function1,
                  child: Icon(
                    itemIcon1,
                    size: 20,
                  )),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(0),
                    minimumSize: Size.zero,
                    backgroundColor: ColorManager.white.withOpacity(.7),
                    foregroundColor: ColorManager.mainAppColor),
                onPressed: function2,
                child: Icon(
                  itemIcon2,
                  size: 20,
                ))
          ],
        ),
      ],
    ),
  );
}

BaseAccurityTestsRepository setChart(index) {
  if (index == 0) {
    return CChartTest();
  } else {
    return EChartTest();
  }
}

Widget showAccuritytestBody(AccurityModel accurityModel, mediaQueryWidth,
    mediaQueryHeight, chartindex) {
  BaseAccurityTestsRepository baseAccurityTestsRepository =
      setChart(chartindex);
  print(chartindex);
  AccurityTestsUseCase accurityTestsUseCase = AccurityTestsUseCase(
      baseAccurityTestsRepository: baseAccurityTestsRepository);
  var result = accurityTestsUseCase.executeAccurityItems(accurityModel);

  return Container(
    width: mediaQueryWidth * .45,
    height: mediaQueryHeight * .65,
    child: Center(
        child: GridView.count(
      primary: false,
      padding: const EdgeInsets.all(1),
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
      crossAxisCount: accurityModel.noOfColumns,
      children: result.accurityItems,
    )),
  );
}
