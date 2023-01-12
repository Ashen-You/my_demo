import 'package:flutter/material.dart';
import 'package:my_demo/modules/home/presentation/view_model/tab_view_model.dart';
import 'package:my_demo/widgets/navigationPage/navigation_page_controller_mixin.dart';

mixin HomeController on NavigationPageControllerMixin {
  List tabs = <TabViewModel>[
    TabViewModel(title: '发现', icon: const Icon(Icons.music_note_rounded)),
    TabViewModel(title: '我的', icon: const Icon(Icons.person_rounded))
  ];

  late TabController tabController;

  int get tabCount => tabs.length;

  int get nowIndex => tabController.index;

  updateIndex(index) {
    tabController.index = index;
    refreshPage();
  }
}
