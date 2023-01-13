import 'package:flutter_screenutil/flutter_screenutil.dart';

mixin ScreenMixin {
  static final screenUtil = ScreenUtil();

  /// this is the font size for the display word, get the appropriate size, compatible
  /// with horizontal/vertical screen switching.
  double getFontSize(double fontSize) => screenUtil.setSp(fontSize);

  /// this is the function to get the appropriate wide, high, compatible with
  /// horizontal/vertical screen switching
  double getLength(double dp) => screenUtil.scaleWidth * dp;
}
