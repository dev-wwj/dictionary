import 'package:dictionary/root/controllers/root_controller.dart';
import 'package:dictionary/servers/toast_service.dart';
import 'package:get/get.dart';

class RootBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RootController());
    Get.lazyPut(() => ToastService());
  }
}
