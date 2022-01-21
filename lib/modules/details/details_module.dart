import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:test_animete/application/module/module.dart';

import 'details_bindings.dart';
import 'details_page.dart';

class DetailsModule extends Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/details',
      page: () => const DetailsPage(),
      binding: DetailsBindings(),
    ),
  ];
}
