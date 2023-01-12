import 'package:flutter/material.dart';
import 'package:my_demo/modules/user_view/presentation/controller/user_controller.dart';

class UserView extends StatefulWidget {
  const UserView({Key? key}) : super(key: key);

  @override
  State<UserView> createState() => _UserState();
}

class _UserState extends State<UserView> with UserViewController {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.red,
        width: 200,
        height: 200,
        child: Center(child: Text('User')),
      ),
    );
  }
}
