import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_animete/l10n/l10n.dart';
import 'package:test_animete/provider/locale_provider.dart';

class LanguageWiget2 extends StatelessWidget {
  const LanguageWiget2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LocaleProvider>(context);
    final locale = provider.locale;

    return DropdownButtonHideUnderline(
      child: DropdownButton(
        value: locale,
        icon: Container(width: 40),
        items: L10n.all.map((locale) {
          final flag = L10n.getFlag(locale.languageCode);

          return DropdownMenuItem(
            child: Center(
              child: Text(
                flag,
                style: const TextStyle(
                  fontSize: 40,
                ),
              ),
            ),
            value: locale,
            onTap: () {
              final provider =
                  Provider.of<LocaleProvider>(context, listen: false);

              provider.setLocale(locale);
            },
          );
        }).toList(),
        onChanged: (locale) {},
      ),
    );
  }
}
