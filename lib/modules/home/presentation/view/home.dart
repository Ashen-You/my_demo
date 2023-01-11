import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/modules/home/presentation/controller/home_controller.dart';
import 'package:my_demo/modules/user/presentation/routers/user_router.dart';
import 'package:my_demo/widgets/navigationPage/navigation_page.dart';
import 'package:my_demo/widgets/rounded_widget.dart';

class Home extends NavigationPage {
  const Home({Key? key}) : super(key: key);

  @override
  NavigationPageState<Home> createState() => _HomeState();
}

class _HomeState extends NavigationPageState<Home> with HomeController {
  @override
  String? get title => 'Home';

  @override
  Widget buildContentWidget(context) {
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
              controller: controller,
              autoplay: true,
              indicatorLayout: PageIndicatorLayout.SCALE,
            )),
        ElevatedButton(
            onPressed: () => Get.toNamed(UserRouter.userMainPage),
            child: const Text('Go To User'))
      ],
    );
  }
}
