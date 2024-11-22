import 'package:flutter/animation.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with GetTickerProviderStateMixin {
  final title = 'Home'.obs;

  late final AnimationController animationController;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    animationController =
        AnimationController(vsync: this);
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    animationController.dispose();
  }

}
