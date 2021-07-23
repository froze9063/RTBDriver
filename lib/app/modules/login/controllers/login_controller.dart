import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  final count = 0.obs;

  TextEditingController emailEditingController = TextEditingController();
  TextEditingController passwordEditingController = TextEditingController();

  Color emailBorderColor = Colors.white;
  Color passwordBorderColor = Colors.white;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  void changeBorderColor(String text, String type){
    if(text.length > 0){
      if(type == "email"){
        emailBorderColor = Color.fromRGBO(255, 205, 56, 1.0);
      }
      else{
        passwordBorderColor = Color.fromRGBO(255, 205, 56, 1.0);
      }
    }
    else{
      if(type == "email"){
        emailBorderColor = Colors.white;
      }
      else{
        passwordBorderColor = Colors.white;
      }
    }
    update(["border_color"]);
  }
}
