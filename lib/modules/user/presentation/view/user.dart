import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/modules/home/presentation/controller/home_controller.dart';
import 'package:my_demo/widgets/navigationPage/navigation_page.dart';
import 'package:my_demo/widgets/rounded_widget.dart';

class User extends NavigationPage {
  User({Key? key}) : super(key: key);

  @override
  NavigationPageState<User> createState() => _UserState();
}

class _UserState extends NavigationPageState<User> with UserController{

  @override
  String? get title => 'User';

  @override
  Widget buildContentWidget(context) {
    return Column(
      children: [
        Obx(() => RoundedWidget(
          child: Text('$count'),
        )),
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
