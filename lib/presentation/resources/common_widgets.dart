import 'package:flutter/material.dart';
import 'package:opto_geek/presentation/resources/color_manager.dart';
import 'package:opto_geek/presentation/resources/font_manager.dart';

Widget showTitleText(
  text, {
  textSize = 25.0,
  textFamily = FontManager.tekoBold,
  textColor = ColorManager.mainTextColor,
  textAlign = TextAlign.center,
}) {
  return Text(
    text,
    textAlign: textAlign,
    style: TextStyle(
      fontSize: textSize,
      fontFamily: textFamily,
      color: textColor,
    ),
  );
}

Widget showNormalText(text,
    {textSize = 16.0,
    textFamily = FontManager.quicksandBold,
    textColor = ColorManager.primaryTextColor}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: textSize,
      fontFamily: textFamily,
      color: textColor,
    ),
  );
}

Widget showImage(content, {imageWidth = 50.0, imageHeight = 50.0}) {
  return Image(
    image: AssetImage(content),
    width: imageWidth,
    height: imageHeight,
  );
}

Widget showHorizontalSpace(value) {
  return SizedBox(width: value);
}

Widget showVerticalSpace(value) {
  return SizedBox(height: value);
}

Widget showListViewItem(title, mediaQueryWidth, context, route, bgColor) {
  return InkWell(
    onTap: () {
      Navigator.pushReplacementNamed(context, route);
    },
    child: Container(
      width: 120.0 + (mediaQueryWidth * .05),
      height: 80.0 + (mediaQueryWidth * .05),
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: bgColor.withOpacity(.8),
          border: Border.all(color: ColorManager.primaryBtnBG),
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: ColorManager.white,
                borderRadius: BorderRadius.circular(20)),
            child: const Icon(
              Icons.remove_red_eye,
              color: ColorManager.mainAppColor,
              size: 20,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: showNormalText(title,
                textColor: ColorManager.white, textSize: 14.0),
          )
        ],
      ),
    ),
  );
}
