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
        home: const Home(),
        theme: ThemeData(
          colorScheme: const ColorScheme(
              brightness: Brightness.light,
              primary: Colors.black54,
              onPrimary: Colors.white,
              secondary: Colors.white54,
              onSecondary: Colors.black,
              error: Colors.red,
              onError: Colors.yellow,
              background: Colors.blue,
              onBackground: Colors.white,
              surface: Colors.green,
              onSurface: Colors.black87
          ),
        ),
        getPages: FwkNavigator().pages
    );
  }
}
