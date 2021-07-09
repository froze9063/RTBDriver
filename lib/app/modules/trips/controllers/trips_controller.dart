import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TripsController extends GetxController with SingleGetTickerProviderMixin{
  //TODO: Implement TripsController

  final count = 0.obs;
  late TabController tabController;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(vsync: this, length: 2);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
