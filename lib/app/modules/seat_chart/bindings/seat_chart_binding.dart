import 'package:get/get.dart';

import '../controllers/seat_chart_controller.dart';

class SeatChartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SeatChartController>(
      () => SeatChartController(),
    );
  }
}
