import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:my_demo/modules/main_view/presentation/controller/main_view_controller.dart';
import 'package:my_demo/widgets/rounded_widget.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> with MainViewController{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildSwiper(),
        _buildCoverMenu(),
        _buildCoverList()
      ],
    );
  }

  Widget _buildSwiper() {
    return RoundedWidget(
        height: 150,
        child: Swiper(
          itemBuilder: (context, index) => Image.asset(
            "assets/images/image${index + 1}.jpg",
            fit: BoxFit.fill,
          ),
          itemCount: 5,
          pagination: const SwiperPagination(),
          controller: swiperController,
          autoplay: true,
          indicatorLayout: PageIndicatorLayout.SCALE,
        )
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
