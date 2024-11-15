import 'package:dictionary/modules/home/controllers/home_controller.dart';
import 'package:dictionary/modules/home/views/setting_drawer_view.dart';
import 'package:dictionary/servers/toast_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('随身小字典'),
        actions: [
          IconButton(
              onPressed: () => Scaffold.of(context).openDrawer,
              icon: Icon(Icons.settings))
        ],
      ),
      drawer: SettingDrawerView(),
      body: ColoredBox(
        color: Colors.red,
        child: Center(
          child: Text(Get.find<HomeController>().title.value),
        ),
      ),
    );
  }
}

