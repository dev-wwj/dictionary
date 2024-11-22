import 'package:dictionary/modules/home/controllers/home_controller.dart';
import 'package:dictionary/modules/home/views/w_search_bar.dart';
import 'package:dictionary/provider/dictionary_provider.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => WSearchBarController());
    Get.lazyPut(() => DictionaryProvider());
  }

}