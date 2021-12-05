import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:test_animete/application/module/module.dart';
import 'package:test_animete/modules/home/home_bindings.dart';

import 'home_page.dart';

class HomeModule extends Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/home',
      page: () => const HomePage(),
      binding: HomeBindings(),
    ),
  ];
}
