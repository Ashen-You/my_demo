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
        RoundedWidget(
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
        ),
      ],
    );
  }
}
