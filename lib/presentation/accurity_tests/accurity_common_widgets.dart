import 'package:flutter/material.dart';
import 'package:opto_geek/data/repository/accurity_test_repos/alphapetchart_repository_impl.dart';
import 'package:opto_geek/data/repository/accurity_test_repos/cchart_repository_impl.dart';
import 'package:opto_geek/data/repository/accurity_test_repos/leachart_repository_impl.dart';
import 'package:opto_geek/data/repository/accurity_test_repos/numeralchart_repository_impl.dart';
import 'package:opto_geek/data/repository/accurity_test_repos/pediatric_repository_impl.dart';
import 'package:opto_geek/domain/entity/accurity_entity.dart';
import 'package:opto_geek/domain/repository/accurity_repository.dart';
import 'package:opto_geek/domain/usecases/accurity_tests_usecases.dart';

import '../../data/repository/accurity_test_repos/echart_repository_impl.dart';
import '../resources/color_manager.dart';
import '../resources/common_widgets.dart';

Widget showAcurityBottomItem(
    itemText, mediaQueryWidth, itemIcon1, itemIcon2, function1, function2) {
  return Container(
    //color: Colors.deepOrange,
    height: double.infinity,
    margin: const EdgeInsets.only(right: 1),
    //margin: EdgeInsets.only(right: mediaQueryWidth * .01),
    padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 3),
    child: Column(
      children: [
        showTitleText(itemText, textSize: (8.0 + mediaQueryWidth * .003)),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              //color: Colors.blue,
              padding: const EdgeInsets.all(0),
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
  } else if (index == 1) {
    return EChartTest();
  } else if (index == 2) {
    return NumeralChart();
  } else if (index == 3) {
    return AlphapeticChart();
  } else if (index == 4) {
    return PediatricChart();
  } else if (index == 5) {
    return LEAChart();
  } else {
    return CChartTest();
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
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: accurityModel.noOfColumns,
      children: result.accurityItems,
    )),
  );
}
