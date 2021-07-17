import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class EditProfileController extends GetxController {
  //TODO: Implement EditProfileController

  final count = 0.obs;

  late TextEditingController textEditingController;
  late TextEditingController phoneEditingController;
  late TextEditingController codeEditingController;
  late TextEditingController licenceEditingController;
  late TextEditingController busNoEditingController;
  late TextEditingController passwordEditingController;
  late TextEditingController confirmPasswordEditingController;

  @override
  void onInit() {
    textEditingController = TextEditingController();
    textEditingController.text = "John Travis Scott Travolta";

    phoneEditingController = TextEditingController();
    phoneEditingController.text = "+65 4589 0321";

    codeEditingController = TextEditingController();
    codeEditingController.text = "S2459077A";

    licenceEditingController = TextEditingController();
    licenceEditingController.text = "S1234567A";

    busNoEditingController = TextEditingController();
    busNoEditingController.text = "SBA 4124";

    passwordEditingController = TextEditingController();
    passwordEditingController.text = "password123";

    confirmPasswordEditingController = TextEditingController();
    confirmPasswordEditingController.text = "password123";
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
