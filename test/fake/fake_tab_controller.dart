import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class FakeTabController extends Fake implements TabController {
  @override
  late int index;

  FakeTabController() : index = 0;
}