import 'package:flutter/material.dart';

class RoundedWidget extends StatelessWidget {
  RoundedWidget(
      {Key? key,
      this.child,
      this.height = 150,
      this.margin = const EdgeInsets.all(10)})
      : super(key: key);

  Color color = Colors.grey;

  double width = double.maxFinite;

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
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(_circularValue)),
      clipBehavior: Clip.hardEdge,
      child: child,
    );
  }
}
