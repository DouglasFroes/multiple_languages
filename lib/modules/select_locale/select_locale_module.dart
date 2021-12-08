import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:test_animete/application/module/module.dart';
import 'package:test_animete/modules/select_locale/select_locale_bindings.dart';
import 'package:test_animete/modules/select_locale/select_locale_page.dart';

class SelectLocaleModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/select_locale',
      page: () => const SelectLocalePage(),
      binding: SelectLocaleBindings(),
    )
  ];
}
