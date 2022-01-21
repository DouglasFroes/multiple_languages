import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:test_animete/modules/menu/widget/category.dart';
import 'package:test_animete/services/theme_services.dart';

import 'details_controller.dart';

class DetailsPage extends GetView<DetailsController> {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('details'),
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: Get.height * 0.1,
          width: Get.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  ThemeService().setTheme("redTheme");
                },
                child: Text('Theme red'),
              ),
              InkWell(
                onTap: () {
                  ThemeService().setTheme("purpleTheme");
                },
                child: Text('Theme purple'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
