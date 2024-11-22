import 'package:dictionary/main.dart';
import 'package:dictionary/provider/dictionary_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WSearchBar extends GetView<WSearchBarController> {
  @override
  const WSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          controller: controller.editingController,
          decoration: InputDecoration(
              prefixIcon: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Icon(Icons.search),
              ),
              labelText: 'input placeholder'.tr,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              filled: true,
              fillColor: Colors.grey[200]!.withOpacity(0.5),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              suffixIcon: Obx(() => (controller.inputText.value.isNotEmpty)
                  ? Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: IconButton(
                          onPressed: () {
                            controller.editingController.clear();
                            FocusScope.of(context).unfocus();
                          },
                          icon: Icon(Icons.clear)))
                  : Container())),
          textInputAction: TextInputAction.search,
          onSubmitted: controller.onSubmited,
        ),
        SizedBox(height: 16.0),
      ],
    );
  }
}

class WSearchBarController extends GetxController {
  final TextEditingController editingController = TextEditingController();

  final DictionaryProvider privider = Get.find();

  var inputText = ''.obs;

  @override
  void onInit() {
    super.onInit();
    editingController.addListener(() {
      print(editingController.text);
      inputText.value = editingController.text;
    });
  }

  @override
  void onClose() {
    super.onClose();
    editingController.dispose();
  }

  void onSubmited(String value) {
    logger.t('input ---> $value');
    privider.queryCharacter(value);
  }
}
