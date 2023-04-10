import 'package:flutter/material.dart';
import 'package:my_demo/fwk/mixin/screen_mixin.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T> with ScreenMixin{
}
