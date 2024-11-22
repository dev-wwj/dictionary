import 'package:clipboard/clipboard.dart';
import 'package:dictionary/main.dart';
import 'package:dictionary/servers/toast_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class SettingDrawerView extends StatelessWidget {
  const SettingDrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    final ToastService toastService = Get.find();

    return Drawer(
      backgroundColor: Color(0xFFEEEEEE),
      child: Column(
        children: [
          Spacer(
            flex: 1,
          ),
          _row(ListTile(
            title: Text('feedback'.tr),
            trailing: Text('fyddwwj@hotmail.com'),
            onTap: () {
              FlutterClipboard.copy('fyddwwj@hotmail.com').then((value) {
                logger.i('clipboard email');
                toastService.showSuccess(context, 'email_copy_success'.tr);
              });
            },
          )),
          _row(AboutListTile(
            applicationIcon: FlutterLogo(),
            applicationName: 'app_name'.tr,
            applicationVersion: 'v0.0.1',
            applicationLegalese: 'Copyright© 2024-2044 Scorpio',
            aboutBoxChildren: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'app_name'.tr,
                  style: TextStyle(color: Color(0xff999999), fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
            child: Row(
              children: [Text('about'.tr), Spacer(), Icon(Icons.info_outline)],
            ),
          )),
          Spacer(
            flex: 3,
          ),
        ],
      ),
    );
  }

  Widget _row<T extends Widget>(T child) {
    return Container(
      child: child,
      decoration: BoxDecoration(
          color: Colors.white,
          border:
              Border(bottom: BorderSide(color: Color(0xFFEEEEEE), width: 0.5))),
    );
  }
}
