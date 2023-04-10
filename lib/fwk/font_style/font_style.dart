import 'package:flutter/material.dart';
import 'package:my_demo/fwk/font_style/body_style.dart';
import 'package:my_demo/fwk/mixin/screen_mixin.dart';

class FwkFontStyle with ScreenMixin {
  factory FwkFontStyle() => _singleton;

  FwkFontStyle._internal();

  static final _singleton = FwkFontStyle._internal();

  BodyStyle get title1 =>
      BodyStyle(baseStyle: TextStyle(fontSize: getFontSize(20)));

  BodyStyle get title2 =>
      BodyStyle(baseStyle: TextStyle(fontSize: getFontSize(18)));

  BodyStyle get body1 =>
      BodyStyle(baseStyle: TextStyle(fontSize: getFontSize(16)));

  BodyStyle get body2 =>
      BodyStyle(baseStyle: TextStyle(fontSize: getFontSize(14)));

  BodyStyle get caption1 =>
      BodyStyle(baseStyle: TextStyle(fontSize: getFontSize(12)));

  BodyStyle get caption2 =>
      BodyStyle(baseStyle: TextStyle(fontSize: getFontSize(10)));
}
