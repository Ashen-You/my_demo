import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:my_demo/modules/user_view/presentation/controller/user_controller.dart';
import 'package:my_demo/widgets/rounded_widget.dart';

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
    return Column(
      children: [
        _buildUserWidget(),
        _buildCoverMenu(),
        _buildCoverList()
      ]
    );
  }

  Widget _buildUserWidget() {
    return Stack(
      alignment: Alignment.center,
      children: [
        RoundedWidget(
          height: 150,
          color: Colors.black54,
          margin: EdgeInsets.all(10).copyWith(top: 50),
          child: const Center(
            child: Text('Ashen You', style: TextStyle(fontSize: 20, color: Colors.white),)
          ),
        ),
        Positioned(
          top: 10,
            child: ClipOval(
              child: Image.asset('assets/images/image1.jpg', width: 100, height: 100, fit: BoxFit.fill),
            )
        ),
      ],
    );
  }

  Widget _buildCoverMenu() {
    return RoundedWidget(
        height: 150,
        color: Colors.black54,
        child: Wrap(
          alignment: WrapAlignment.center,
          runAlignment: WrapAlignment.center,
          children: [
            _buildCoverItem("assets/images/image1.jpg"),
            _buildCoverItem("assets/images/image2.jpg"),
            _buildCoverItem("assets/images/image3.jpg"),
          ],
        )
    );
  }

  Widget _buildCoverList() {
    List <String> covers = [
      "assets/images/image1.jpg", "assets/images/image2.jpg", "assets/images/image3.jpg",
      "assets/images/image4.jpg", "assets/images/image5.jpg", "assets/images/image1.jpg",
      "assets/images/image2.jpg", "assets/images/image3.jpg", "assets/images/image4.jpg",
      "assets/images/image5.jpg"
    ];

    return Expanded(
      child: RoundedWidget(
        color: Colors.black54,
        margin: EdgeInsets.all(10),
        child: ListView.builder(
          itemBuilder: (context, index) => _buildListItem(covers[index]),
          itemCount: covers.length,
        ),
      ),
    );
  }

  Widget _buildCoverItem(String path) {
    return SizedBox(
      child: Column(
        children: [
          RoundedWidget(
              height: 110,
              width: 110,
              margin: const EdgeInsets.symmetric(horizontal: 5),
              child: Image.asset(path, fit: BoxFit.fill,)
          ),
          Text('我的最爱', style: TextStyle(color: Colors.white),)
        ],
      ),
    );
  }

  Widget _buildListItem(String path) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        children: [
          RoundedWidget(
              width: 50,
              height: 50,
              child: Image.asset(path, fit: BoxFit.fill)),
          const Text('我的歌单', style: TextStyle(color: Colors.white))
        ],
      ),
    );
  }
}
