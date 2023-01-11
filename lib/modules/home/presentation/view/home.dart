import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/modules/home/presentation/controller/home_controller.dart';
import 'package:my_demo/widgets/navigationPage/navigation_page.dart';

class Home extends NavigationPage {
  Home({Key? key}) : super(key: key);

  @override
  NavigationPageState<Home> createState() => _HomeState();
}

class _HomeState extends NavigationPageState<Home> with HomeController{

  @override
  String? get title => 'Home';

  @override
  Widget buildContentWidget(context) {
    return Column(
      children: [
        Obx(() => Text('$count')),
        Row(
          children: [
            IconButton(onPressed: increment, icon: const Icon(Icons.add)),
            IconButton(onPressed: decrement, icon: const Icon(Icons.remove)),
          ],
        )
      ],
    );
  }
}
