import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:test_animete/modules/home/home_module.dart';
import 'package:test_animete/modules/menu/menu_module.dart';
import 'package:test_animete/services/theme_services.dart';

import 'application/bindings/application_bindings.dart';
import 'application/ui/test_animate_ui_config.dart';
import 'l10n/l10n.dart';
import 'modules/details/details_module.dart';
import 'modules/select_locale/select_locale_module.dart';
import 'modules/splash/splash_module.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  await Get.putAsync(() => ThemeService().init());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeService().currentTheme,
      supportedLocales: L10n.all,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      title: TestAnimeteUiConfig.title,
      locale: Get.locale,
      initialBinding: ApplicationBindings(),
      // home: MyHomePage(),
      getPages: [
        ...SplashModule().routers,
        ...SelectLocaleModule().routers,
        ...HomeModule().routers,
        ...MenuModule().routers,
        ...DetailsModule().routers,
      ],
    );
  }
}
