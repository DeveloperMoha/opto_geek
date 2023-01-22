import 'package:flutter/material.dart';
import 'package:opto_geek/presentation/resources/color_manager.dart';
import 'package:opto_geek/presentation/resources/common_widgets.dart';
import 'package:opto_geek/presentation/resources/font_manager.dart';
import 'package:opto_geek/presentation/resources/image_manager.dart';
import 'package:opto_geek/presentation/resources/string_manager.dart';
import 'package:opto_geek/presentation/splash/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SplashController splashController = SplashController();
    splashController.goToHome(context);
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      ImageManager.splashBG3,
                    ),
                    fit: BoxFit.cover),
              ),
              child: Container(
                color: ColorManager.mainColorWithOpacity,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      showImage(ImageManager.appLogo,
                          imageWidth: 150.0, imageHeight: 100.0),
                      showVerticalSpace(5.0),
                      showTitleText(StringManager.appTitle,
                          textColor: ColorManager.white,
                          textSize: 30.0,
                          textFamily: FontManager.quicksandBold),
                      showVerticalSpace(20.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: showNormalText(StringManager.splashHeadText,
                            textColor: ColorManager.mainScreenBG),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
