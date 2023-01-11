import 'package:flutter/material.dart';
import 'package:my_demo/modules/user/presentation/controller/user_controller.dart';
import 'package:my_demo/widgets/navigationPage/navigation_page.dart';

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
      ],
    );
  }
}
