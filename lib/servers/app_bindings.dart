import 'package:dictionary/servers/toast_service.dart';
import 'package:get/get.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(ToastService());
  }
}
