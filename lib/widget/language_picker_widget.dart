import 'package:flutter/material.dart';
import 'package:test_animete/l10n/l10n.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LanguageWiget extends StatelessWidget {
  const LanguageWiget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context);

    final flag = L10n.getFlag(locale.languageCode);

    return Center(
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 40,
            child: Text(
              flag,
              style: const TextStyle(fontSize: 80),
            ),
          ),
          Text(
            AppLocalizations.of(context)!.helloWord,
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
