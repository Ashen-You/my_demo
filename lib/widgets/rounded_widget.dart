import 'package:flutter/material.dart';
import 'package:my_demo/fwk/mixin/screen_mixin.dart';

class RoundedWidget extends StatelessWidget with ScreenMixin {
  RoundedWidget(
      {Key? key,
      this.child,
      this.color,
      this.height = double.maxFinite,
      this.width = double.maxFinite,
      this.margin})
      : super(key: key);

  Color? color;

  double width;

  double height;

  final double _circularValue = 10;

  final Widget? child;

  EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin ?? EdgeInsets.fromLTRB(getLength(10), getLength(10), getLength(10), 0),
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(_circularValue)),
      clipBehavior: Clip.hardEdge,
      child: child,
    );
  }
}
