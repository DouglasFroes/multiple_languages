import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(
    const MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // print test

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      //alter AppLocalization pt-br

      title: 'Flutter supportedLocales',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(AppLocalizations.of(context)!.title),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                AppLocalizations.of(context)!.helloWord,
                style: const TextStyle(fontSize: 30),
              ),
              Text(
                AppLocalizations.of(context)!.helloWord,
                style: const TextStyle(fontSize: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ,
//   "@helloWord": {
//     "description": "hello, subscribe the deves tecnologia channel"
//   }
