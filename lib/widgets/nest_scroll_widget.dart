import 'package:flutter/material.dart';

class NestScrollWidget extends StatelessWidget {
  NestScrollWidget({Key? key, required this.body, required this.headerSliverBuilder}) : super(key: key);

  Widget body;
  List<Widget> Function(BuildContext, bool) headerSliverBuilder;

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: headerSliverBuilder,
      body: body
    );
  }
}
