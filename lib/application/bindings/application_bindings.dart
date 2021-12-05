import 'package:get/instance_manager.dart';
import 'package:test_animete/application/storage/locale_select.dart';

class ApplicationBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(LocaleSelect()).init();
  }
}
