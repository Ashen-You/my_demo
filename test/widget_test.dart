// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:my_demo/modules/home/presentation/controller/home_controller.dart';
import 'package:my_demo/widgets/base/navigationPage/navigation_page_controller_mixin.dart';

import 'fake/fake_tab_controller.dart';
import 'package:my_demo/modules/home/presentation/controller/test_controller.dart';

void main() {

  test('test test controller', () {
    TestController testState = TestController();
    testState.tabController = FakeTabController();
    testState.initData(1, 'test');
    expect(testState.param.index, 1);
    expect(testState.param.name, 'test');
  });

  test('test Mixin of HomeState', () {
    FakeHomeState testState = FakeHomeState();
    testState.initData(1, 'test');
    expect(testState.param.index, 1);
    expect(testState.param.name, 'test');
  });
}


class FakeHomeState with NavigationPageControllerMixin, HomeController{
  FakeHomeState() {
    tabController = FakeTabController();
  }

  @override
  void hideLoading() {
    // TODO: implement hideLoading
  }

  @override
  void refreshPage() {
    // TODO: implement refreshPage
  }

  @override
  void showLoading() {
    // TODO: implement showLoading
  }
  
}
