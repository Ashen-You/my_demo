import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:get/get.dart';
import 'package:my_demo/modules/home/presentation/controller/home_controller.dart';
import 'package:my_demo/modules/user/presentation/routers/user_router.dart';
import 'package:my_demo/widgets/navigationPage/navigation_page.dart';

class Home extends NavigationPage {
  Home({Key? key}) : super(key: key);

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
        Swiper(
          itemBuilder: (context, index) => Image.asset("assets/images/image${index + 1}.jng", height: 100, width: 100),
          itemCount: 5,
          pagination: const SwiperPagination(),
          control: swiperControl,
        ),
        ElevatedButton(
            onPressed: () => Get.toNamed(UserRouter.userMainPage),
            child: const Text('Go To User'))
      ],
    );
  }
}
