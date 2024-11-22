import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

enum ToastType {
  normal,
  success,
  fail,
  warn,
}

extension ValueToastType on ToastType {

  String? lottieFile() {
    switch (this) {
      case ToastType.normal:
        return null;
      case ToastType.success:
        return 'assets/lottie/check_pop.json';
      case ToastType.fail:
        return 'assets/lottie/x_pop.json';
      default:
        return null;
    }
  }

}

class ToastService extends GetxController with GetTickerProviderStateMixin {
  late final AnimationController _animationController;
  @override
  void onInit() {
    super.onInit();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
  }

  @override
  void onClose() {
    _animationController.dispose();
    super.onClose();
  }

  void show(BuildContext context, String message, ToastType type) {
    _animationController.reset();
    Get.rawSnackbar(
        message: message,
        duration: const Duration(seconds: 3),
        snackPosition: SnackPosition.BOTTOM,
        padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 15),
        margin: const EdgeInsets.all(10),
        borderRadius: 10,
        icon: type.lottieFile() != null ? Lottie.asset(
          type.lottieFile()!,
          controller: _animationController,
          animate: true,
          repeat: false,
          width: 50,
          height: 50,
        ) : null );
    _animationController.forward().whenComplete(() {});
  }

  void showSuccess(BuildContext context, String message) {
    show(context, message, ToastType.success);
  }

  void showFail(BuildContext context, String message) {
    show(context, message, ToastType.fail);
  }
}
