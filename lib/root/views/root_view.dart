import 'package:dictionary/root/controllers/root_controller.dart';
import 'package:dictionary/servers/toast_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

late ToastService service;

class RootView extends GetView<RootController> {
  const RootView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Navigator(
          key: Get.nestedKey(1),
          initialRoute: controller.routes.first,
          onGenerateRoute: controller.onGenerateRoute,
        ),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: 'found'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: 'mine'),
              ],
              currentIndex: controller.currentIndex.value,
              onTap: controller.updateIndex),
        ));
  }
}
