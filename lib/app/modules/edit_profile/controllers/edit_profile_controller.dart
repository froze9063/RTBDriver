import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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

  Color fullnameBorderColor = Colors.white;
  Color phoneBorderColor = Colors.white;
  Color codeBorderColor = Colors.white;
  Color licenceBorderColor = Colors.white;
  Color busNoBorderColor = Colors.white;
  Color passwordBorderColor = Colors.white;
  Color confirmPasswordBorderColor = Colors.white;

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

  void setFullnameBorder(Color color){
    this.fullnameBorderColor = color;
    update(["fullname_color"]);
  }

  void setPhoneBorder(Color color){
    this.phoneBorderColor = color;
    update(["phone_color"]);
  }

  void setCodeBorder(Color color){
    this.codeBorderColor = color;
    update(["code_color"]);
  }

  void setLicenceBorder(Color color){
    this.licenceBorderColor = color;
    update(["licence_color"]);
  }

  void setBusNoBorder(Color color){
    this.busNoBorderColor = color;
    update(["bus_color"]);
  }

  void setPasswordNoBorder(Color color){
    this.passwordBorderColor = color;
    update(["password_color"]);
  }

  void setConfirmPasswordNoBorder(Color color){
    this.confirmPasswordBorderColor = color;
    update(["confirm_color"]);
  }
}
