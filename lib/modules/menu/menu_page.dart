import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:test_animete/modules/menu/menu_controller.dart';
import 'package:test_animete/modules/menu/widget/category.dart';
import 'package:test_animete/modules/menu/widget/item.dart';
import 'package:test_animete/services/theme_services.dart';

class MenuPage extends GetView<MenuController> {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: SizedBox(
          width: Get.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppLocalizations.of(context)!.menu,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                AppLocalizations.of(context)!.menuSubtitle,
                style: const TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            SizedBox(
              height: Get.height * 0.1,
              child: Expanded(
                child: ListView.builder(
                  itemCount: 20,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) => Category(idNumber: index),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Obx(() {
                return ListView.builder(
                  itemCount: controller.counter,
                  itemBuilder: (_, index) => Item(idNumber: index),
                );
              }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: Get.height * 0.1,
          width: Get.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  ThemeService().setTheme("redTheme");
                },
                child: const Text('Theme red'),
              ),
              InkWell(
                onTap: () {
                  ThemeService().setTheme("purpleTheme");
                },
                child: const Text('Theme purple'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
