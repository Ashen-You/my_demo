import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:my_demo/modules/user_view/presentation/controller/user_controller.dart';

class UserView extends StatefulWidget {
  const UserView({Key? key}) : super(key: key);

  @override
  State<UserView> createState() => _UserState();
}

class _UserState extends State<UserView> with UserViewController {
  var index = 0.obs;
  List colors = <Color>[Colors.red, Colors.blue, Colors.green];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () => index.value = (index.value + 1) % 3,
        child: Obx(() => Container(
          color: colors[index.value],
          width: 200,
          height: 200,
          child: const Center(child: Text('User')),
        ))
      ),
    );
  }
}
