import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class ToastService extends GetxController with GetTickerProviderStateMixin {
  late final AnimationController _animationController;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
  }

  @override
  void onClose() {
    // TODO: implement onClose
    _animationController.dispose();
    super.onClose();
  }

  void show(BuildContext context, String message) {
    Get.rawSnackbar(
        message: message,
        duration: const Duration(seconds: 3),
        snackPosition: SnackPosition.BOTTOM,
        overlayColor: Colors.black.withOpacity(0.7),
        backgroundColor: Colors.red,
        margin: const EdgeInsets.all(16),
        borderRadius: 10,
        icon: Lottie.asset(
          'assets/lottie/check_pop.json',
          controller: _animationController,
          animate: true,
          repeat: true,
          width: 100,
          height: 100,
        ));
    _animationController.forward().whenComplete(() {
      // _animationController.reset();
    });
  }
}
