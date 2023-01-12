import 'package:flutter/material.dart';
import 'package:my_demo/widgets/rounded_widget.dart';

class InputWidget extends StatefulWidget {
  const InputWidget({Key? key}) : super(key: key);

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  @override
  Widget build(BuildContext context) {
    return RoundedWidget(
      height: 40,
      child: Container(
        color: Colors.grey,
        child: TextFormField(),
      ),
    );
  }
}
