import 'package:get/get.dart';

class AuthService extends GetxService {
  static AuthService get to => Get.find();

  final isLoginIn = false.obs;

  bool get isLoginInValue => isLoginIn.value;

  void login() {

  }

  void loginOut() {
    
  }

}