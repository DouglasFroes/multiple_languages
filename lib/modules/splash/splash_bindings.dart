import 'package:get/instance_manager.dart';
import 'package:test_animete/modules/splash/splash_controller.dart';

class SplashBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(
      SplashController(),
    );
  }
}
