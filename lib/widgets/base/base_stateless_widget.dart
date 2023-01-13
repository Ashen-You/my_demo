import 'package:flutter/material.dart';
import 'package:my_demo/fwk/mixin/screen_mixin.dart';

abstract class BaseStatelessWidget extends StatelessWidget with ScreenMixin{
  const BaseStatelessWidget({Key? key}) : super(key: key);
}
