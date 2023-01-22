import 'dart:math' as math;

import 'package:opto_geek/presentation/resources/image_manager.dart';
import 'package:opto_geek/presentation/resources/string_manager.dart';

class AppConstants {
  static int noOfRows = 2;
  static int noOfColumns = 3;
  static int maxNoOfRows = 10;
  static int maxNoOfColumns = 10;
  static double itemDimInPx = 40.0; //

  static const List<String> chartTypes = [
    "C Chart",
    "E Chart",
    "Numeral Chart",
    "Alphapetical Chart",
    "Pediatric Chart",
    "LEA Figure Chart",
  ];
  static int selectedChartIndex = 0;
  static const List<double> nintyAngles = [
    math.pi / 2, // 270 degree
    -math.pi, // 180 degree
    -math.pi / 2, //90 degree
    math.pi / 2, // 270 degree
    math.pi, // 0 degree
  ];

  static const List<String> numeralList = [
    ImageManager.svg2,
    ImageManager.svg8,
    ImageManager.svg1,
    ImageManager.svg7,
    ImageManager.svg5,
    ImageManager.svg3,
    ImageManager.svg4,
    ImageManager.svg9,
    ImageManager.svg0,
    ImageManager.svg1,
    ImageManager.svg7,
    ImageManager.svg5,
    ImageManager.svg3,
    ImageManager.svg4,
    ImageManager.svg6,
    ImageManager.svg2,
    ImageManager.svg8,
    ImageManager.svg1,
    ImageManager.svg7,
    ImageManager.svg3,
    ImageManager.svg4,
    ImageManager.svg9,
    ImageManager.svg0,
    ImageManager.svg1,
    ImageManager.svg7,
    ImageManager.svg5,
    ImageManager.svg3,
    ImageManager.svg0,
    ImageManager.svg1,
    ImageManager.svg7,
    ImageManager.svg5,
    ImageManager.svg3,
    ImageManager.svg4,
    ImageManager.svg6,
    ImageManager.svg2,
    ImageManager.svg8,
    ImageManager.svg1,
    ImageManager.svg7,
    ImageManager.svg3,
    ImageManager.svg4,
  ];

  static const List<String> alphabetList = [
    ImageManager.svga,
    ImageManager.svgb,
    ImageManager.svgc,
    ImageManager.svgd,
    ImageManager.svge,
    ImageManager.svgf,
    ImageManager.svgg,
    ImageManager.svgh,
    ImageManager.svgi,
    ImageManager.svgj,
    ImageManager.svgk,
    ImageManager.svgl,
    ImageManager.svgm,
    ImageManager.svgn,
    ImageManager.svgo,
    ImageManager.svgp,
    ImageManager.svgq,
    ImageManager.svgr,
    ImageManager.svgs,
    ImageManager.svgt,
    ImageManager.svgu,
    ImageManager.svgv,
    ImageManager.svgw,
    ImageManager.svgx,
    ImageManager.svgy,
    ImageManager.svgz,
  ];

  static const List<String> pediatricList = [
    ImageManager.svgbat,
    ImageManager.svgbird,
    ImageManager.svgbutterfly,
    ImageManager.svgcow,
    ImageManager.svgdog,
    ImageManager.svgdolphin,
    ImageManager.svgduck,
    ImageManager.svgelephant,
    ImageManager.svgfish,
    ImageManager.svgfrog,
    ImageManager.svghen,
    ImageManager.svghorse,
    ImageManager.svglion,
    ImageManager.svgpanda,
    ImageManager.svgpig,
    ImageManager.svgplant,
    ImageManager.svgspider,
    ImageManager.svgtiger,
    ImageManager.svgtree,
    ImageManager.svgzebra,
  ];

  static const List<String> LEAList = [
    ImageManager.svgyes,
    ImageManager.svgbrain,
    ImageManager.svgbycicle,
    ImageManager.svgcar,
    ImageManager.svgcat1,
    ImageManager.svgcheerful,
    ImageManager.svgcubic,
    ImageManager.svgdiamond,
    ImageManager.svgfoot,
    ImageManager.svggun,
    ImageManager.svgheart,
    ImageManager.svghome,
    ImageManager.svgmotorcycle,
    ImageManager.svgplane,
    ImageManager.svgrectangle,
    ImageManager.svgsexi,
    ImageManager.svgskelton,
    ImageManager.svgsolid_circle,
    ImageManager.svgsquare,
    ImageManager.svgstar,
    ImageManager.svgsun,
    ImageManager.svgtaxi,
    ImageManager.svgtriangle,
    ImageManager.svgweapon,
    ImageManager.svgwifi,
    ImageManager.svgworld,
  ];
}
