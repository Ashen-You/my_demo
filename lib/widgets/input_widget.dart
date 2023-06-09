import 'package:flutter/material.dart';
import 'package:my_demo/widgets/base/base_state.dart';
import 'package:my_demo/widgets/rounded_widget.dart';

class InputWidget extends StatefulWidget {
  InputWidget({Key? key, this.enabled = true, this.onTap}) : super(key: key);

  bool enabled;

  final GestureTapCallback? onTap;

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends BaseState<InputWidget> {
  @override
  Widget build(BuildContext context) {
    return RoundedWidget(
      height: getLength(40),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          color: Colors.grey,
          child: TextFormField(
            enabled: widget.enabled,
          ),
        ),
      ),
    );
  }
}
