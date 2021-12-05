import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class LocaleSelect extends GetxService {
  void init() {
    //  await time  5s
    Future.delayed(const Duration(milliseconds: 400), () {
      if (Get.locale == null) {
        Get.offAllNamed('/select_locale');
      } else {
        Get.offAllNamed('/home');
      }
    });
  }

  void setLocale(Locale locale) {
    Get.updateLocale(locale);
    init();
  }
}
