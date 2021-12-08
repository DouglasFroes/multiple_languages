import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_animete/modules/home/home_controller.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        alignment: Alignment.bottomCenter,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/back.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: InkWell(
          onTap: () {
            Get.toNamed('/menu');
          },
          child: Container(
            // margin: const EdgeInsets.all(5),
            padding: const EdgeInsets.all(5),
            height: Get.height * 0.10,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white30,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Text(
              AppLocalizations.of(context)!.homeDescription,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed('/select_locale');
        },
        child: const Icon(Icons.language),
      ),
    );
  }
}
