import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:my_demo/fwk/router/navigator/impl/navigator.dart';
import 'package:my_demo/fwk/router/router.dart';
import 'package:my_demo/modules/home/presentation/view/home.dart';

class HomeRouter implements Router {
  static String prefix = '/home';
  static String homeMainPage = '$prefix/main';

  @override
  void init() {
    FwkNavigator()
        .define(GetPage(name: homeMainPage, page: () => const Home()));
  }
}
