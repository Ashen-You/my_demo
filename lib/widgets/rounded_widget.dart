import 'dart:math';

import 'package:flutter/material.dart';

class RoundedWidget extends StatelessWidget {
  RoundedWidget({Key? key, this.child}) : super(key: key);

  Color color = Colors.grey;

  double get _circularValue => (min(width, height) / 10);

  double width = 200;

  double height = 150;

  double padding = 10;

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(_circularValue))
      ),
      child: Center(
        child: child,
      ),
    );
  }
}
