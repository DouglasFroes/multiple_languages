import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:test_animete/application/storage/locale_select.dart';

class SelectLocaleController extends GetxController {
  final LocaleSelect _localeSelect;

  SelectLocaleController({required LocaleSelect localeSelect})
      : _localeSelect = localeSelect;

  String getFlagIcon(String code) {
    switch (code) {
      case 'en':
        return 'πΊπΈ';
      case 'pt':
        return 'π§π·';
      case 'es':
        return 'πͺπΈ';
      default:
        return 'πΊπΈ';
    }
  }

  void setLocale(String code) {
    _localeSelect.setLocale(Locale(code));
  }
}
