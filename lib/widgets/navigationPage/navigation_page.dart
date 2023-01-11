import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:my_demo/widgets/navigationPage/navigation_page_controller_mixin.dart';

abstract class NavigationPage extends StatefulWidget {
  NavigationPage({Key? key, String? title}) : super(key: key);
}

abstract class NavigationPageState<T extends NavigationPage> extends State<NavigationPage> with NavigationPageControllerMixin {
  RxBool _isLoading = false.obs;

  String? title;

  Color? backgroundColor;

  @override
  void hideLoading() => hideLoadingWidget();

  @override
  void refreshPage() => setState(() {});

  @override
  void showLoading() => showLoadingWidget();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBarWidget(),
      body: _buildBodyWidget(),
      bottomNavigationBar: _buildBottomNavigationBar(context),
      backgroundColor: backgroundColor,
    );
  }

  PreferredSizeWidget? _buildAppBarWidget() {
    return AppBar(
      title: Text(title ?? ''),
      centerTitle: true,
    );
  }

  Widget _buildBodyWidget() {
    return SizedBox(
      height: double.maxFinite,
      child: Flex(
        direction: Axis.vertical,
        children: <Widget>[
          Expanded(
            child: Stack(
              children: <Widget>[
                buildContentWidget(context),
                _isLoading.isTrue ? _buildLoadingWidget() : _buildEmptyWidget(),
              ],
            ),
          ),
        ],
      )
    );
  }

  Widget _buildBottomNavigationBar(context){
    return _buildEmptyWidget();
  }

  Widget buildContentWidget(context);

  Widget _buildLoadingWidget() => Container(
    color: Colors.black54,
    child: const Center(
      child:
      SpinKitFadingCircle(color: Colors.blue),
    ),
  );

  Widget _buildEmptyWidget() => const SizedBox(width: 0, height: 0);

  void hideLoadingWidget() => _isLoading = RxBool(false);

  void showLoadingWidget() => _isLoading = RxBool(true);
}

