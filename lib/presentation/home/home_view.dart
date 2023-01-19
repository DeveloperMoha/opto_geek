import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:opto_geek/presentation/resources/color_manager.dart';
import 'package:opto_geek/presentation/resources/common_widgets.dart';
import 'package:opto_geek/presentation/resources/font_manager.dart';
import 'package:fire_tv_listener/fire_tv_listener.dart';

import '../resources/string_manager.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final fn = FocusNode();

  String pressed = '- PRESS A BUTTON -';

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    fn.dispose();
  }

  void rebuild() {
    if (mounted) setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return FireTVRemoteListener(
      onUp: () => pressed = 'UP',
      onDown: () => pressed = 'DOWN',
      onLeft: () => pressed = 'LEFT',
      onRight: () => pressed = 'RIGHT',
      onMenu: () => pressed = 'MENU',
      onSelect: () => pressed = 'SELECT',
      onFF: () => pressed = 'FF',
      onRew: () => pressed = 'REW',
      onPlayPause: () => pressed = 'PLAY/PAUSE',
      // onBack: () => back = true, // back sends android back key
      afterButton: (event) {
        if (event is RawKeyUpEvent) pressed = '- PRESS A BUTTON -';
        print(
            "\n =============pressed btn is ::: ====   ${event.logicalKey.keyLabel} \n");
        rebuild();
      },

      focusNode: fn,
      child: Scaffold(
        backgroundColor: ColorManager.mainScreenBG,
        appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: ColorManager.mainAppColor,
            title: Center(
              child: showTitleText(StringManager.appBarTitle,
                  textColor: ColorManager.white,
                  textFamily: FontManager.quicksandBold),
            )),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 15.0),
                child: showTitleText(
                  StringManager.homeWelcome,
                  textSize: 21.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    showTitleText(StringManager.testTitle,
                        textSize: 26.0,
                        textColor: ColorManager.primaryTextColor),
                    const Icon(
                      Icons.star_border_purple500,
                      size: 25,
                      color: ColorManager.mainAppColor,
                    ),
                  ],
                ),
              ),
              //**************************** visual accurity tests
              Container(
                color: ColorManager.tirquazContainerHeader,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 15.0),
                child: showTitleText(StringManager.visualAcurityTest,
                    textAlign: TextAlign.start,
                    textColor: ColorManager.white,
                    textFamily: FontManager.quicksandBold),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                height: 130 + mediaQuery.size.width * .05,
                alignment: Alignment.center,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    showListViewItem(
                        StringManager.visualAcurityCChart,
                        mediaQuery.size.width,
                        context,
                        "/splash",
                        ColorManager.tirquazContainerBG),
                    showListViewItem(
                        StringManager.visualAcurityEChart,
                        mediaQuery.size.width,
                        context,
                        "/splash",
                        ColorManager.tirquazContainerBG),
                    showListViewItem(
                        StringManager.visualAcurityEnglishAlphChart,
                        mediaQuery.size.width,
                        context,
                        "/splash",
                        ColorManager.tirquazContainerBG),
                    showListViewItem(
                        StringManager.visualAcurityEnglishSentenceChart,
                        mediaQuery.size.width,
                        context,
                        "/splash",
                        ColorManager.tirquazContainerBG),
                    showListViewItem(
                        StringManager.visualAcurityNumeralChart,
                        mediaQuery.size.width,
                        context,
                        "/splash",
                        ColorManager.tirquazContainerBG),
                    showListViewItem(
                        StringManager.visualAcurityLEAChart,
                        mediaQuery.size.width,
                        context,
                        "/splash",
                        ColorManager.tirquazContainerBG),
                    showListViewItem(
                        StringManager.visualAcurityPediatricChart,
                        mediaQuery.size.width,
                        context,
                        "/splash",
                        ColorManager.tirquazContainerBG),
                  ],
                ),
              ),
              //**************************** color vision tests
              Container(
                color: ColorManager.blueContainerHeader,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 15.0),
                child: showTitleText(StringManager.colorVisionTest,
                    textAlign: TextAlign.start,
                    textColor: ColorManager.white,
                    textFamily: FontManager.quicksandBold),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                height: 130 + mediaQuery.size.width * .05,
                alignment: Alignment.center,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    showListViewItem(
                        StringManager.colorVisionColorBlindTest,
                        mediaQuery.size.width,
                        context,
                        "/splash",
                        ColorManager.blueContainerBG),
                    showListViewItem(
                        StringManager.colorVisionDuoChromeTest,
                        mediaQuery.size.width,
                        context,
                        "/splash",
                        ColorManager.blueContainerBG),
                  ],
                ),
              ),
              //**************************** Contrast tests
              Container(
                color: ColorManager.orangeContainerHeader,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 15.0),
                child: showTitleText(StringManager.contrastTest,
                    textAlign: TextAlign.start,
                    textColor: ColorManager.white,
                    textFamily: FontManager.quicksandBold),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                height: 130 + mediaQuery.size.width * .05,
                alignment: Alignment.center,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    showListViewItem(
                        StringManager.contrastTests,
                        mediaQuery.size.width,
                        context,
                        "/splash",
                        ColorManager.orangeContainerBG),
                  ],
                ),
              ),
              //**************************** worth four dots tests
              Container(
                color: ColorManager.magnetaContainerHeader,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 15.0),
                child: showTitleText(StringManager.worthFourDotsTest,
                    textAlign: TextAlign.start,
                    textColor: ColorManager.white,
                    textFamily: FontManager.quicksandBold),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                height: 130 + mediaQuery.size.width * .05,
                alignment: Alignment.center,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    showListViewItem(
                        StringManager.worthFourDotsTests,
                        mediaQuery.size.width,
                        context,
                        "/splash",
                        ColorManager.magnetaContainerBG),
                  ],
                ),
              ),
              //**************************** Contrast tests
              Container(
                color: ColorManager.greenContainerHeader,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 15.0),
                child: showTitleText(StringManager.shoberTest,
                    textAlign: TextAlign.start,
                    textColor: ColorManager.white,
                    textFamily: FontManager.quicksandBold),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                height: 130 + mediaQuery.size.width * .05,
                alignment: Alignment.center,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    showListViewItem(
                        StringManager.shoberTests,
                        mediaQuery.size.width,
                        context,
                        "/splash",
                        ColorManager.greenContainerBG),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
