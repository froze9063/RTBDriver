import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenusController extends GetxController {
  //TODO: Implement MenusController

  final count = 0.obs;

  Color homeColor = Colors.white;
  Color alltripsColor = Colors.white;
  Color messageColor = Colors.white;
  Color reviewsColor = Colors.white;

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

  void setHomeColor(Color color){
    this.homeColor = color;
    update(["home_color"]);
  }

  void setAllTripsColor(Color color){
    this.alltripsColor = color;
    update(["alltrips_color"]);
  }

  void setMessageColor(Color color){
    this.messageColor = color;
    update(["message_color"]);
  }

  void setReviewsColor(Color color){
    this.reviewsColor = color;
    update(["review_color"]);
  }
}
