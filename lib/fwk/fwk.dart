import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FwkApp {
  factory FwkApp() => _singleton;

  FwkApp._internal();

  static final FwkApp _singleton = FwkApp._internal();

  Widget buildFwkApp(BuildContext context,
      {required Widget home,
      required List<GetPage> pages,
      required double width,
      required double height}) {
    return ScreenUtilInit(
        designSize: Size(width, height),
        builder: (BuildContext context, Widget? child) => GetMaterialApp(
            home: home,
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
                  onSurface: Colors.black87),
            ),
            getPages: pages));
  }
}
