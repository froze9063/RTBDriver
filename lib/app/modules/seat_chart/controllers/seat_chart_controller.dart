import 'package:get/get.dart';

class SeatChartController extends GetxController {
  //TODO: Implement SeatChartController

  final count = 0.obs;

  List<String> seatsList = [];

  @override
  void onInit() {
    seatsList.add("assets/img_available_seat.png");
    seatsList.add("assets/img_available_seat.png");
    seatsList.add("assets/img_available_seat.png");
    seatsList.add("assets/img_available_seat.png");
    seatsList.add("assets/img_available_seat.png");
    seatsList.add("assets/img_available_seat.png");
    seatsList.add("assets/img_available_seat.png");
    seatsList.add("assets/img_available_seat.png");
    seatsList.add("assets/img_available_seat.png");
    seatsList.add("assets/img_available_seat.png");
    seatsList.add("assets/img_available_seat.png");
    seatsList.add("assets/img_available_seat.png");
    seatsList.add("assets/img_booked_seat.png");
    seatsList.add("assets/img_available_seat.png");
    seatsList.add("assets/img_available_seat.png");
    seatsList.add("assets/img_booked_seat.png");
    seatsList.add("assets/img_available_seat.png");
    seatsList.add("assets/img_available_seat.png");
    seatsList.add("assets/img_available_seat.png");
    seatsList.add("assets/img_available_seat.png");
    seatsList.add("assets/img_available_seat.png");
    seatsList.add("assets/img_available_seat.png");
    seatsList.add("assets/img_booked_seat.png");
    seatsList.add("assets/img_booked_seat.png");
    seatsList.add("assets/img_available_seat.png");
    seatsList.add("assets/img_available_seat.png");
    seatsList.add("assets/img_available_seat.png");
    seatsList.add("assets/img_available_seat.png");
    seatsList.add("assets/img_booked_seat.png");
    seatsList.add("assets/img_available_seat.png");
    seatsList.add("assets/img_available_seat.png");
    seatsList.add("assets/img_available_seat.png");
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
