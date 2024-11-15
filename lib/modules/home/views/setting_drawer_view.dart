import 'package:clipboard/clipboard.dart';
import 'package:dictionary/main.dart';
import 'package:dictionary/servers/auth_service.dart';
import 'package:dictionary/servers/toast_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:toastification/toastification.dart';

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
            title: Text('意见反馈'),
            trailing: Text('fyddwwj@hotmail.com'),
            onTap: () {
              FlutterClipboard.copy('fyddwwj@hotmail.com').then((value) {
                logger.i('clipboard email');
                toastService.show(context, 'message');

              });
            },
          )),
          _row(AboutListTile(
            applicationIcon: FlutterLogo(),
            applicationName: '随身字典',
            applicationVersion: 'v0.0.1',
            applicationLegalese: 'Copyright© 2024-2044 Scorpio',
            aboutBoxChildren: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  '随身字典',
                  style: TextStyle(color: Color(0xff999999), fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
            child: Row(
              children: [Text('about'), Spacer(), Icon(Icons.info_outline)],
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
