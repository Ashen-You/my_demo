import 'package:flutter/material.dart';
import 'package:my_demo/modules/home/presentation/controller/home_controller.dart';
import 'package:my_demo/modules/home/presentation/view_model/tab_view_model.dart';
import 'package:my_demo/modules/main_view/presentation/view/main_view.dart';
import 'package:my_demo/modules/user_view/presentation/view/user_view.dart';
import 'package:my_demo/widgets/input_widget.dart';
import 'package:my_demo/widgets/navigationPage/navigation_page.dart';

class Home extends NavigationPage {
  const Home({Key? key}) : super(key: key);

  @override
  NavigationPageState<Home> createState() => _HomeState();
}

class _HomeState extends NavigationPageState<Home>
    with HomeController, SingleTickerProviderStateMixin {
  @override
  String? get title => 'Home';

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget buildContentWidget(context) {
    return IndexedStack(
      index: tabController.index,
      children: const [MainView(), UserView()],
    );
  }

  @override
  PreferredSizeWidget? buildAppBarWidget() {
    return AppBar(
      leading: const Icon(Icons.menu),
      title: const InputWidget(),
    );
  }

  @override
  Widget buildBottomNavigationBar(context) {
    return BottomNavigationBar(
        items: tabs.map((tabVM) => _buildBarItem(tabVM)).toList(),
        onTap: (index) => updateIndex(index),
        currentIndex: tabController.index);
  }

  BottomNavigationBarItem _buildBarItem(TabViewModel tabVM) {
    return BottomNavigationBarItem(icon: tabVM.icon, label: tabVM.title);
  }
}
