import 'package:get/get.dart';

class MenuController extends GetxController {
  final _counter = 20.obs;

  int get counter => _counter.value;

  void setCounter(int value) => _counter.value = value;
}
