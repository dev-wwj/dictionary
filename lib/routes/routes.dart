part of 'pages.dart';

// abstract class Routes {
//   static const home = _Paths.home;
//   static const navi = _Paths.home + _Paths.navi;
//   static const found = _Paths.found;
//   static const mine = _Paths.mine;
//   static const detail = _Paths.found + _Paths.detail;
//
//   Routes._();
//
//   static String found_detail(String word) => '$found/$word';
// }

abstract class Routes {
  static const home = '/home';
  static const navi = '/nav';
  static const found = '/found';
  static const mine = '/mine';
  static const detail = '/:word';
}