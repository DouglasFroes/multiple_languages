import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:test_animete/application/module/module.dart';

import 'menu_bindings.dart';
import 'menu_page.dart';

class MenuModule extends Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/menu',
      page: () => const MenuPage(),
      binding: MenuBindings(),
    ),
  ];
}
