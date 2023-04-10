import 'package:flutter/material.dart';
import 'package:my_demo/modules/home/presentation/controller/home_controller.dart';
import 'package:my_demo/modules/home/presentation/view_model/tab_view_model.dart';
import 'package:my_demo/widgets/navigationPage/navigation_page_controller_mixin.dart';

class TestController with NavigationPageControllerMixin {
  late TabController tabController;

  List tabs = <TabViewModel>[
    TabViewModel(title: '发现', icon: const Icon(Icons.music_note_rounded)),
    TabViewModel(title: '我的', icon: const Icon(Icons.person_rounded))
  ];

  int get tabCount => tabs.length;

  late HomeParam param;

  void initData(int index, String name) {
    param = HomeParam(index: index, name: name);
    updateIndex(0);
  }

  updateIndex(index) {
    tabController.index = index;
    refreshPage();
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