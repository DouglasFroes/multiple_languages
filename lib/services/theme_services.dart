import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:test_animete/themes/themes.dart';

class ThemeService extends GetxService {
  ThemeData _currentThemeData = ThemeData();
  String _themeName = "";
  final _getStorage = GetStorage();
  final _storageKey = "theme";

  ThemeData get currentTheme => _currentThemeData;
  Future<ThemeService> init() async {
    loadThemeData();
    return this;
  }

  loadThemeData() {
    _themeName = _getStorage.read(_storageKey) ?? "redTheme0";
    setTheme(_themeName);
  }

  setTheme(themeName) {
    _themeName = themeName;

    switch (_themeName) {
      case 'redTheme':
        _currentThemeData = redTheme;
        break;

      case 'purpleTheme':
        _currentThemeData = purpleTheme;
        break;
      default:
        _currentThemeData = redTheme;
        break;
    }
    _getStorage.write(_storageKey, _themeName);
    Get.changeTheme(_currentThemeData);
  }
}
