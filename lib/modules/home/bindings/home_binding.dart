import 'package:dictionary/modules/home/controllers/home_controller.dart';
import 'package:dictionary/servers/toast_service.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => ToastService());
  }

}