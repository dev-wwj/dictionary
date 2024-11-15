import 'package:dictionary/modules/found/controllers/found_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class FoundView extends GetView<FoundController> {
  const FoundView({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.yellow,
      child: Center(
        child: Text("found"),
      ),
    );
  }
}
