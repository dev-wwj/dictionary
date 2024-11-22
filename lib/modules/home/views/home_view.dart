import 'package:dictionary/modules/home/controllers/home_controller.dart';
import 'package:dictionary/modules/home/views/setting_drawer_view.dart';
import 'package:dictionary/modules/home/views/w_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class HomeView extends GetView<HomeController>  {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('app_name'.tr),
          actions: [
            IconButton(
                onPressed: () => Scaffold.of(context).openDrawer,
                icon: Icon(Icons.settings))
          ],
        ),
        drawer: SettingDrawerView(),
        body: _body());
  }

  Widget _body() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        children: [
          Lottie.asset(
            'assets/lottie/empty_status.json',
            controller: controller.animationController,
            animate: true,
            repeat: true,
            width: 100,
            height: 100,
            onLoaded: (composition){
              controller.animationController
                  ..duration = composition.duration
                  ..forward().whenComplete((){
                    controller.animationController.repeat();
                  });
            }
          ),
          WSearchBar()
        ],
      ),
    );
  }
}
