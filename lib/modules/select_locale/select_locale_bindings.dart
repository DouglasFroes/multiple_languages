import 'package:get/instance_manager.dart';
import 'package:test_animete/modules/select_locale/select_locale_controller.dart';

class SelectLocaleBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(
      SelectLocaleController(
        localeSelect: Get.find(),
      ),
    );
  }
}
