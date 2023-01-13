import 'package:flutter/material.dart';
import 'package:my_demo/config/router_config.dart';
import 'package:my_demo/fwk/fwk.dart';
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
    return FwkApp().buildFwkApp(
        context, home: const Home(),
        pages: FwkNavigator().pages,
        width: 428,
        height: 926
    );
  }
}
