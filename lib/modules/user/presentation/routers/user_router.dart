import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:my_demo/fwk/router/navigator/impl/navigator.dart';
import 'package:my_demo/fwk/router/router.dart';
import 'package:my_demo/modules/user/presentation/view/user.dart';

class UserRouter implements Router{
  static String prefix = '/user';
  static String userMainPage = '$prefix/main';

  @override
  void init() {
    FwkNavigator().define(GetPage(name: userMainPage, page: () => User()));
  }
}
