import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/config/router_config.dart';
import 'package:my_demo/fwk/router/navigator/impl/navigator.dart';
import 'package:my_demo/modules/home/presentation/view/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key}) {
    FwkNavigator().initConfig(AppRouterConfig.config);
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Home(),
      getPages: FwkNavigator().pages
    );
  }}