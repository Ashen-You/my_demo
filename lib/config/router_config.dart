import 'package:get/get.dart';
import 'package:my_demo/fwk/router/router.dart';
import 'package:my_demo/modules/home/presentation/routers/home_router.dart';
import 'package:my_demo/modules/user/presentation/routers/user_router.dart';

class AppRouterConfig{
  static RouterConfig get config => RouterConfig(
      routerList: [
        HomeRouter(),
        UserRouter(),
      ],
  );
}

class RouterConfig {
  RouterConfig({
    required this.routerList,
    this.pageTransition
  });

  /// app router list, it's mandatory.
  List<Router> routerList;

  /// global page transition, if without setting, the page transition will according to the platform.
  /// iOS is [Transition.cupertino] and Android is [Transition.material]
  Transition? pageTransition;
}
