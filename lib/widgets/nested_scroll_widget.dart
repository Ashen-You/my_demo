import 'package:flutter/material.dart';
import 'package:my_demo/widgets/base/base_stateless_widget.dart';

class NestedScrollWidget extends BaseStatelessWidget {
  NestedScrollWidget(
      {Key? key,
      required this.headerHeight,
      required this.pinedWidgetHeight,
      required this.body,
      required this.header,
      required this.pinedWidget})
      : super(key: key);

  Widget body;

  double headerHeight;

  double pinedWidgetHeight;

  Widget header;

  Widget pinedWidget;

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
        headerSliverBuilder: (context, isScroll) {
          return <Widget>[
            SliverAppBar(
              floating: true,
              pinned: true,
              snap: false,
              forceElevated: true,
              automaticallyImplyLeading: false,
              toolbarHeight: getLength(0),
              collapsedHeight: getLength(0),
              expandedHeight: headerHeight,
              flexibleSpace: header,
            ),
            SliverPersistentHeader(
              pinned: true,
              delegate: CustomSliverPersistentHeaderDelegate(
                height: pinedWidgetHeight,
                widget: pinedWidget,
              ),
            ),
          ];
        },
        body: Container(margin: EdgeInsets.only(top: getLength(0)), child: body));
  }
}

class CustomSliverPersistentHeaderDelegate
    extends SliverPersistentHeaderDelegate {
  CustomSliverPersistentHeaderDelegate(
      {required this.widget, required this.height});
  Widget widget;
  double height;

  @override
  Widget build(_, __, ___) {
    return widget;
  }

  @override
  double get maxExtent => height;

  @override
  double get minExtent => height;

  @override
  bool shouldRebuild(_) => false;
}
