import 'package:get/get.dart';

class HomeController extends GetxController {
  // relogio

  Rx<DateTime> _dateTime = Rx<DateTime>(DateTime.now());

  // retutn hora HH:mm
  String get hour =>
      _dateTime.value.hour.toString().padLeft(2, '0') +
      ':' +
      _dateTime.value.minute.toString().padLeft(2, '0');

  void updateHour() {
    _dateTime.bindStream(
        Stream.periodic(Duration(minutes: 1), (_) => DateTime.now()));
  }

  HomeController() {
    updateHour();
  }
}
