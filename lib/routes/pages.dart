import 'package:dictionary/modules/found/bindings/found_binding.dart';
import 'package:dictionary/modules/found/views/found_view.dart';
import 'package:dictionary/modules/home/bindings/home_binding.dart';
import 'package:dictionary/modules/home/views/home_view.dart';
import 'package:dictionary/modules/mine/bindings/mine_binding.dart';
import 'package:dictionary/modules/mine/views/mine_view.dart';
import 'package:dictionary/root/bindings/root_binding.dart';
import 'package:dictionary/root/views/root_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

part 'Routes.dart';

class Pages {
  Pages._();

  static var initial = '/';

  static final pages = [
    // GetPage(
    //     name: '/',
    //     page: () => const RootView(),
    //     binding: RootBindings(),
    //     participatesInRootNavigator: true,
    //     preventDuplicates: true,
    //     children: [
    //
    //     ])

    GetPage(
        preventDuplicates: true,
        name: Routes.home,
        page: () => const HomeView(),
        bindings: [HomeBinding()]),
    // GetPage(
    //     // preventDuplicates: true,
    //     name: Routes.mine,
    //     page: () => const MineView(),
    //     bindings: [MineBinding()]),
    // GetPage(
    //     // preventDuplicates: true,
    //     name: Routes.found,
    //     page: () => const FoundView(),
    //     bindings: [FoundBinding()]),
  ];


}
