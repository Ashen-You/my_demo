import 'package:flutter/material.dart';

class BodyStyle{
  BodyStyle({
    required TextStyle baseStyle
  }) {
    regular = baseStyle.copyWith(fontWeight: FontWeight.w400);
    semiBold = baseStyle.copyWith(fontWeight: FontWeight.w500);
    bold = baseStyle.copyWith(fontWeight: FontWeight.w600);
  }

  late TextStyle regular;
  late TextStyle semiBold;
  late TextStyle bold;
}