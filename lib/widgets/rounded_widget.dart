import 'package:flutter/material.dart';

class RoundedWidget extends StatelessWidget {
  RoundedWidget(
      {Key? key,
      this.child,
      this.color,
      this.height = double.maxFinite,
      this.width = double.maxFinite,
      this.margin = const EdgeInsets.fromLTRB(10, 10, 10, 0)})
      : super(key: key);

  Color? color;

  double width;

  double height;

  final double _circularValue = 10;

  final Widget? child;

  EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(_circularValue)),
      clipBehavior: Clip.hardEdge,
      child: child,
    );
  }
}
