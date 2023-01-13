import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:my_demo/fwk/router/navigator/impl/navigator.dart';
import 'package:my_demo/fwk/router/router.dart';
import 'package:my_demo/modules/bottom_bar_view/main_view/presentation/view/main_view.dart';

class MainViewRouter implements Router {
  static String mainPage = '/main';

  @override
  void init() {
    FwkNavigator()
        .define(GetPage(name: mainPage, page: () => const MainView()));
  }
}
