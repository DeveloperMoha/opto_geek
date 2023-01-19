import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opto_geek/core/utils/app_constants.dart';
import 'package:opto_geek/domain/entity/accurity_entity.dart';
import 'package:opto_geek/presentation/accurity_tests/accurity_common_widgets.dart';
import 'package:opto_geek/presentation/accurity_tests/accurity_cubit.dart';
import 'package:opto_geek/presentation/accurity_tests/accurity_states.dart';
import 'package:opto_geek/presentation/resources/color_manager.dart';
import 'package:opto_geek/presentation/resources/common_widgets.dart';
import 'package:opto_geek/presentation/resources/string_manager.dart';

class AccurityTests extends StatefulWidget {
  const AccurityTests({super.key});

  @override
  State<AccurityTests> createState() => _AccurityTestsState();
}

class _AccurityTestsState extends State<AccurityTests> {
  var mediaQueryWidth, mediaQueryHeight;

  @override
  Widget build(BuildContext context) {
    mediaQueryWidth = MediaQuery.of(context).size.width;
    mediaQueryHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: ColorManager.white,
        appBar: AppBar(
          backgroundColor: ColorManager.mainAppColor,
          title: Center(
            child: showTitleText(StringManager.visualAcurityTestTitle,
                textColor: ColorManager.white, textSize: 20.0),
          ),
        ),
        body: BlocProvider<AccurityCubit>(
          create: (context) {
            return AccurityCubit(InitialAccurityState());
          },
          child: BlocBuilder<AccurityCubit, AccurityStates>(
            builder: (context, state) {
              var cubitObject = BlocProvider.of<AccurityCubit>(context);
              return Column(
                children: [
                  SizedBox(
                    height:
                        mediaQueryHeight * (4.5 / 6) + (mediaQueryWidth * .01),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: Column(
                              children: [
                                Container(
                                  width: double.infinity,
                                  color: ColorManager.lightGrey.withOpacity(.2),
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 27),
                                  child: showTitleText(AppConstants.chartTypes[
                                      AppConstants.selectedChartIndex]),
                                ),
                                Expanded(
                                    child: Container(
                                        width: double.infinity,
                                        child: Align(
                                          alignment: Alignment.topCenter,
                                          child: Center(
                                            child: showAccuritytestBody(
                                                AccurityModel(
                                                    noOfColumns: AppConstants
                                                        .noOfColumns,
                                                    noOfRows:
                                                        AppConstants.noOfRows,
                                                    accurityFraction:
                                                        AppConstants
                                                            .itemDimInPx,
                                                    itemDim: AppConstants
                                                        .itemDimInPx,
                                                    chartType: AppConstants
                                                        .chartTypes[0]),
                                                mediaQueryWidth,
                                                mediaQueryHeight,
                                                AppConstants
                                                    .selectedChartIndex),
                                          ),
                                        ))),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: (mediaQueryWidth * (.035) + 70),
                          color: ColorManager.lightGrey.withOpacity(.3),
                          padding: const EdgeInsets.symmetric(vertical: 50),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                margin: const EdgeInsets.only(top: 40),
                                color: ColorManager.mainScreenBG,
                                width: double.infinity,
                                child: Column(
                                  children: [
                                    showTitleText(StringManager.decimalVal,
                                        textSize: 18.0),
                                    showNormalText("00.00", textSize: 20.0),
                                  ],
                                ),
                              ),
                              Container(
                                color: ColorManager.mainScreenBG,
                                padding: const EdgeInsets.all(10),
                                width: double.infinity,
                                child: Column(
                                  children: [
                                    showTitleText(StringManager.snellenVal,
                                        textSize: 18.0),
                                    showNormalText("18/24", textSize: 20.0),
                                  ],
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                color: ColorManager.mainScreenBG,
                                width: double.infinity,
                                child: Column(
                                  children: [
                                    showTitleText(StringManager.logMarVal,
                                        textSize: 18.0),
                                    showNormalText("00.45", textSize: 20.0),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      color: ColorManager.lightGrey.withOpacity(.4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          //change rows count
                          showAcurityBottomItem(
                            StringManager.visualAcurityRowCount,
                            mediaQueryWidth,
                            Icons.add_circle,
                            Icons.remove_circle,
                            () {
                              cubitObject.increaseRows();
                            },
                            () {
                              cubitObject.decreaseRows();
                            },
                          ),
                          //change columns count
                          showAcurityBottomItem(
                            StringManager.visualAcurityColumnsCount,
                            mediaQueryWidth,
                            Icons.add_circle,
                            Icons.remove_circle,
                            () {
                              cubitObject.increaseColumns();
                            },
                            () {
                              cubitObject.decreaseColumns();
                            },
                          ),
                          // change accurity
                          showAcurityBottomItem(
                            StringManager.visualAcurityChange,
                            mediaQueryWidth,
                            Icons.add_circle,
                            Icons.remove_circle,
                            () {
                              cubitObject.increaseAccurity();
                            },
                            () {
                              cubitObject.decreaseAccurity();
                            },
                          ),
                          // change chart type
                          showAcurityBottomItem(
                            StringManager.visualAcurityChangeChart,
                            mediaQueryWidth,
                            Icons.arrow_circle_left_rounded,
                            Icons.arrow_circle_right_rounded,
                            () {
                              cubitObject.changeChartBackword();
                            },
                            () {
                              cubitObject.changeChartForword();
                            },
                          ),
                          // refresh chart contents
                          Container(
                            height: double.infinity,
                            padding: const EdgeInsets.only(top: 3, left: 1),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                showTitleText(
                                    StringManager.visualAcurityrefresh,
                                    textSize: (12.0 + mediaQueryWidth * .003)),
                                Container(
                                  margin: const EdgeInsets.only(top: 13),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          padding: const EdgeInsets.all(0),
                                          minimumSize: Size.zero,
                                          backgroundColor: ColorManager.white
                                              .withOpacity(.7),
                                          foregroundColor:
                                              ColorManager.mainAppColor),
                                      onPressed: () {
                                        cubitObject.test();
                                      },
                                      child: const Icon(
                                        Icons.replay_circle_filled_outlined,
                                        size: 20,
                                      )),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ));
  }
}

Function(void) propFunction(var1) {
  return var1;
}
