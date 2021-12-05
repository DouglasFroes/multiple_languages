import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:test_animete/l10n/l10n.dart';
import 'package:test_animete/provider/locale_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:test_animete/widget/language_picker_widget2.dart';

import 'widget/language_picker_widget.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => LocaleProvider(),
        builder: (context, child) {
          final provider = Provider.of<LocaleProvider>(context);

          return MaterialApp(
            locale: provider.locale,
            supportedLocales: L10n.all,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            title: 'Flutter supportedLocales',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: Scaffold(
              appBar: AppBar(
                title: Center(
                  child: Text(AppLocalizations.of(context)!.language),
                ),
                actions: const [
                  LanguageWiget2(),
                  SizedBox(width: 10),
                ],
              ),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const LanguageWiget(),
                    const SizedBox(height: 36),
                    Text(
                      AppLocalizations.of(context)!.helloWord,
                      style: const TextStyle(fontSize: 30),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
