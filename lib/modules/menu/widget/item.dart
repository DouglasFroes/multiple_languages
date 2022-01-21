import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Item extends StatelessWidget {
  final int _idNumber;

  const Item({Key? key, required int idNumber})
      : _idNumber = idNumber,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(5),
      width: Get.width * 0.4,
      decoration: BoxDecoration(
        color: Colors.black38,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
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
          InkWell(
            onTap: () {
              // ignore: avoid_print
              print('Category Tapped');
              Get.toNamed('/details');
            },
            child: const Text(
              'View Details',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white54),
            ),
          ),
        ],
      ),
    );
  }
}
