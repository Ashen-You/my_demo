import 'package:flutter/material.dart';
import 'package:my_demo/widgets/base/base_stateless_widget.dart';

class NestedScrollWidget extends BaseStatelessWidget {
  NestedScrollWidget({Key? key, required this.body, required this.header}) : super(key: key);

  Widget body;

  Widget header;

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, isScroll) {
        return <Widget>[
          // SliverAppBar(
          //   floating: true,
          //   pinned: true,
          //   snap: true,
          //   forceElevated: innerBoxIsScrolled,
          //   automaticallyImplyLeading: false,
          //   toolbarHeight: getLength(0),
          //   collapsedHeight: getLength(0),
          //   expandedHeight: getLength(headerHeight),
          //   flexibleSpace: _buildHeader(context),
          // ),
          // SliverPersistentHeader(
          //   pinned: true,
          //   delegate: SliverPersistentHeaderPortDelegate(
          //     height: getLength(80),
          //     widget: widget.tabViewWidget,
          //   ),
          // ),
        ];
      },
      body: body
    );
  }
}
