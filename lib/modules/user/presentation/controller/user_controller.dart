import 'package:get/get_rx/get_rx.dart';
import 'package:my_demo/widgets/navigationPage/navigation_page_controller_mixin.dart';

mixin UserController on NavigationPageControllerMixin{
  var count = 0.obs;

  increment() => count++;

  decrement() => count--;
}