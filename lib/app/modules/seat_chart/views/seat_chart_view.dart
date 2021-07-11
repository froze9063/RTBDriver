import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/seat_chart_controller.dart';

class SeatChartView extends GetView<SeatChartController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SeatChartView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SeatChartView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
