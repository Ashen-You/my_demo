import 'package:get/get.dart';
import 'package:my_demo/config/router_config.dart';
import 'package:my_demo/fwk/router/navigator/navigator_service.dart';
import 'package:my_demo/fwk/router/router.dart';

class FwkNavigator implements NavigatorService{
  FwkNavigator._internal();

  factory FwkNavigator() => _singleton;

  static final FwkNavigator _singleton = FwkNavigator._internal();

  List<GetPage> pages = [];

  @override
  void define(GetPage page) {
    pages.add(page);
  }

  @override
  Future<bool> pop() {
    // TODO: implement pop
    throw UnimplementedError();
  }

  @override
  Future<T> push<T>() {
    // TODO: implement push
    throw UnimplementedError();
  }

  @override
  void initConfig(RouterConfig config) {
    for(Router router in config.routerList) {
      router.init();
    }
  }
}