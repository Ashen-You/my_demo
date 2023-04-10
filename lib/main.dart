import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:my_demo/config/router_config.dart';
import 'package:my_demo/fwk/router/navigator/impl/navigator.dart';
import 'package:my_demo/modules/home/presentation/view/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const MethodChannel channel = MethodChannel('myChannel');

  MyApp({super.key}) {
    FwkNavigator().initConfig(AppRouterConfig.config);
  }

  @override
  Widget build(BuildContext context) {
    return FwkApp().buildFwkApp(
        context, home: const Home(),
        pages: FwkNavigator().pages,
        width: 428,
        height: 926
    );
    channel.setMethodCallHandler((call) async {
      if (call.method == 'myMethod') {
        // 处理Native传递过来的数据，并返回结果
        return 'Google';
      }
      return null;
    });
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
              onSurface: Colors.black87),
        ),
        getPages: FwkNavigator().pages);
  }
}
