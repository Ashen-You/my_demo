import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:my_demo/fwk/router/navigator/impl/navigator.dart';
import 'package:my_demo/fwk/router/router.dart';
import 'package:my_demo/modules/bottom_bar_view/user_view/presentation/view/user_view.dart';

class UserViewRouter implements Router {
  static String userMainPage = '/user';

  @override
  void init() {
    FwkNavigator()
        .define(GetPage(name: userMainPage, page: () => const UserView()));
  }
}
