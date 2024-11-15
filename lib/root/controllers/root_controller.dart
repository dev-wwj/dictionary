import 'package:dictionary/modules/found/bindings/found_binding.dart';
import 'package:dictionary/modules/found/views/found_view.dart';
import 'package:dictionary/modules/home/bindings/home_binding.dart';
import 'package:dictionary/modules/home/views/home_view.dart';
import 'package:dictionary/modules/mine/bindings/mine_binding.dart';
import 'package:dictionary/modules/mine/views/mine_view.dart';
import 'package:dictionary/routes/pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RootController extends GetxController {
  static RootController get to => Get.find();

  final List<String> routes = [Routes.home, Routes.found, Routes.mine];

  var currentIndex = 0.obs;

  void updateIndex(int index) {
    currentIndex.value = index;
    Get.toNamed(routes[index], id: 1);
  }

  Route? onGenerateRoute(RouteSettings settings) {
    if (settings.name == Routes.home) {
      return GetPageRoute(
        settings: settings,
        page: () => HomeView(),
        binding: HomeBinding(),
      );
    }

    if (settings.name == Routes.found) {
      return GetPageRoute(
        settings: settings,
        page: () => FoundView(),
        binding: FoundBinding(),
      );
    }

    if (settings.name == Routes.mine) {
      return GetPageRoute(
        settings: settings,
        page: () => MineView(),
        binding: MineBinding(),
      );
    }
    return null;
  }
}


