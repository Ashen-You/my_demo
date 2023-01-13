import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/fwk/font_style/font_style.dart';
import 'package:my_demo/modules/bottom_bar_view/user_view/presentation/controller/user_controller.dart';

import 'package:my_demo/widgets/base/base_state.dart';
import 'package:my_demo/widgets/nested_scroll_widget.dart';
import 'package:my_demo/widgets/rounded_widget.dart';

class UserView extends StatefulWidget {
  const UserView({Key? key}) : super(key: key);

  @override
  BaseState<UserView> createState() => _UserState();
}

class _UserState extends BaseState<UserView> with UserViewController {
  var index = 0.obs;
  List colors = <Color>[Colors.red, Colors.blue, Colors.green];

  @override
  Widget build(BuildContext context) {
    return NestedScrollWidget(
      headerHeight: getLength(200),
      body: _buildCoverList(),
      header: _buildUserWidget(),
      pinedWidgetHeight: getLength(150),
      pinedWidget: _buildCoverMenu(),
    );
  }

  Widget _buildUserWidget() {
    return Stack(
      alignment: Alignment.center,
      children: [
        RoundedWidget(
          height: getLength(150),
          color: Colors.black54,
          margin: EdgeInsets.all(getLength(10)).copyWith(top: getLength(50)),
          child: Center(
              child: Text(
            'Ashen You',
            style: FwkFontStyle().title1.bold.copyWith(color: Colors.white),
          )),
        ),
        Positioned(
            top: getLength(10),
            child: ClipOval(
              child: Image.asset('assets/images/image1.jpg',
                  width: getLength(100),
                  height: getLength(100),
                  fit: BoxFit.fill),
            )),
      ],
    );
  }

  Widget _buildCoverMenu() {
    return RoundedWidget(
        height: getLength(150),
        color: Colors.black54,
        child: Wrap(
          alignment: WrapAlignment.center,
          runAlignment: WrapAlignment.center,
          children: [
            _buildCoverItem("assets/images/image1.jpg"),
            _buildCoverItem("assets/images/image2.jpg"),
            _buildCoverItem("assets/images/image3.jpg"),
          ],
        ));
  }

  Widget _buildCoverList() {
    List<String> covers = [
      "assets/images/image1.jpg",
      "assets/images/image2.jpg",
      "assets/images/image3.jpg",
      "assets/images/image4.jpg",
      "assets/images/image5.jpg",
      "assets/images/image1.jpg",
      "assets/images/image2.jpg",
      "assets/images/image3.jpg",
      "assets/images/image4.jpg",
      "assets/images/image5.jpg"
    ];

    return RoundedWidget(
      color: Colors.black54,
      margin: EdgeInsets.all(getLength(10)),
      child: ListView.builder(
        itemBuilder: (context, index) => _buildListItem(covers[index]),
        itemCount: covers.length,
        shrinkWrap: true,
      ),
    );
  }

  Widget _buildCoverItem(String path) {
    return SizedBox(
      child: Column(
        children: [
          RoundedWidget(
              height: getLength(110),
              width: getLength(110),
              margin: EdgeInsets.symmetric(horizontal: getLength(5)),
              child: Image.asset(
                path,
                fit: BoxFit.fill,
              )),
          const Text(
            '我的最爱',
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }

  Widget _buildListItem(String path) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: getLength(10), vertical: getLength(5)),
      child: Row(
        children: [
          RoundedWidget(
              width: getLength(50),
              height: getLength(50),
              child: Image.asset(path, fit: BoxFit.fill)),
          const Text('我的歌单', style: TextStyle(color: Colors.white))
        ],
      ),
    );
  }
}
