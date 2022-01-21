import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../menu_controller.dart';

class Category extends GetView<MenuController> {
  final int _idNumber;

  const Category({Key? key, required int idNumber})
      : _idNumber = idNumber,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // controller.setCounter(_idNumber);
        controller.setCounter(_idNumber);
      },
      child: Container(
        margin: const EdgeInsets.all(5),
        width: Get.width * 0.25,
        padding: const EdgeInsets.all(5),
        height: Get.height * 0.10,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.black38,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(
              Icons.fastfood,
              size: 35,
            ),
            Text(
              'test $_idNumber',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
