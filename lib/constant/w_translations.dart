import 'package:get/get.dart';

class WTranslations extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'app_name': 'Walk Dictionary',
          'app_version': 'version：@version',
          'feedback':'feedback',
          'about':'about',
          'email_copy_success': 'Email Copy Success',
          'input placeholder': 'input...',
        },
        'zh_CN': {
          'app_name': '随身字典',
          'app_version': '版本号：@version',
          'feedback':'意见反馈',
          'about':'关于',
          'email_copy_success': '邮件已复制到剪切板',
          'input placeholder': '请输入...',
        }
      };
}
