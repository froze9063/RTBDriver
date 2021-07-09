import 'dart:async';

import 'package:get/get.dart';
import 'package:rtb_driver/app/modules/login/views/login_view.dart';

class SplashScreenController extends GetxController {
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    setSplash();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  void setSplash(){
    Timer(Duration(seconds: 2), () async {
      Get.to(() => LoginView());
    });
  }
}
