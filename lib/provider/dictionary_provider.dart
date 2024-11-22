import 'dart:math';

import 'package:dictionary/constant/api.dart';
import 'package:dictionary/main.dart';
import 'package:get/get.dart';

class DictionaryProvider extends GetConnect {

  @override
  void onInit() {
    super.onInit();
    httpClient.addRequestModifier<void>((request) {
      logger.i(request.url);
      return request;
    });
    httpClient.addResponseModifier((request, response) {
      logger.i(request.toString());
      logger.i(response.toString());
      return response;
    });
  }

  Future<Response> queryCharacter(String char) {
    final url = DictionaryApi.url.replaceFirst('%char', char);
    return get(url);
  }
}

