import 'package:get/get.dart';
import 'package:my_demo/config/router_config.dart';

abstract class NavigatorService {
  void initConfig(RouterConfig config);
  void define(GetPage page);
  Future<T> push<T>();
  Future<bool> pop();
}