import 'package:flutter/material.dart';

class L10n {
  static final all = [
    const Locale('en'),
    const Locale('pt'),
    const Locale('es'),
  ];

  static String getFlag(String code) {
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
}
