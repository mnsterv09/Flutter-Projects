import 'package:get/get.dart';

class ControllerHomePage extends GetxController {
  String balance = 'R\$ 1.435.678,00';
  bool eyesValue = true;
  String creditCardValue = 'R\$ 48.780,00';

  void showValue() {
    eyesValue = !eyesValue;

    update();
  }
}
