import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:my_demo/fwk/font_style/font_style.dart';
import 'package:my_demo/modules/bottom_bar_view/main_view/presentation/controller/main_view_controller.dart';
import 'package:my_demo/widgets/base/base_state.dart';
import 'package:my_demo/widgets/rounded_widget.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  BaseState<MainView> createState() => _MainViewState();
}

class _MainViewState extends BaseState<MainView>
    with MainViewController {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [_buildSwiper(), _buildCoverMenu(), _buildCoverList()],
    );
  }

  Widget _buildSwiper() {
    return RoundedWidget(
        height: getLength(150),
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
        ));
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

    return Expanded(
      child: RoundedWidget(
        color: Colors.black54,
        margin: EdgeInsets.all(getLength(10)),
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
              height: getLength(110),
              width: getLength(110),
              child: Image.asset(
                path,
                fit: BoxFit.fill,
              )),
          Text(
            '我的最爱',
            style: FwkFontStyle().body1.regular.copyWith(color: Colors.white),
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
          Text('我的歌单', style: FwkFontStyle().body2.regular.copyWith(color: Colors.white))
        ],
      ),
    );
  }
}
