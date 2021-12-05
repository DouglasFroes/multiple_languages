import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:test_animete/modules/select_locale/select_locale_controller.dart';

class SelectLocalePage extends GetView<SelectLocaleController> {
  const SelectLocalePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Select Locale',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text(
              'English ${controller.getFlagIcon('en')}',
              style: const TextStyle(fontSize: 40),
            ),
            onTap: () {
              controller.setLocale('en');
            },
          ),
          ListTile(
            title: Text(
              'Portuguese${controller.getFlagIcon('pt')}',
              style: const TextStyle(fontSize: 40),
            ),
            onTap: () {
              controller.setLocale('pt');
            },
          ),
          ListTile(
            title: Text(
              'Spanish${controller.getFlagIcon('es')}',
              style: const TextStyle(fontSize: 40),
            ),
            onTap: () {
              controller.setLocale('es');
            },
          ),
        ],
      ),
    );
  }
}
