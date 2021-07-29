import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rtb_driver/app/modules/home/views/home_view.dart';
import 'package:rtb_driver/app/modules/trips/views/trips_view.dart';

import '../controllers/finish_trip_controller.dart';

class FinishTripView extends GetView<FinishTripController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(height: 40),
            Row(
              children: [
                Expanded(child: SizedBox(), flex: 1),
                GestureDetector(
                  child: Container(
                    width: 55,
                    height: 55,
                    child: Image.asset("assets/ic_close_black.png"),
                    color: Colors.transparent,
                  ),
                  onTap: (){
                    Get.offAll(() => HomeView());
                  },
                ),
                SizedBox(width: 10),
              ],
            ),
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/img_thankyou.png"),
                SizedBox(height: 16),
                Text("Thank You", style: TextStyle(
                    color: Color.fromRGBO(255, 205, 56, 1.0),
                    fontSize: 20,
                    fontFamily: "PoppinsBold",
                )),
                SizedBox(height: 16),
                Row(
                  children: [
                    SizedBox(width: 24),
                    Expanded(child: Text("Awesome! You have completed the trip safely. "
                        "Thank you for your service and we look forward to your next trip.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                        color: Color.fromRGBO(135, 141, 156, 1.0),
                        height: 1.5,
                        fontSize: 16,
                        fontFamily: "PoppinsRegular",
                    )), flex: 1),
                    SizedBox(width: 24)
                  ],
                )
              ],
            )),
            GestureDetector(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("View All Trips", style: TextStyle(
                    fontSize: 16,
                    fontFamily: "PoppinsMedium",
                  )),
                  SizedBox(width: 8),
                  Image.asset("assets/ic_yellow_arrow_right.png", height: 18, width: 18, fit: BoxFit.cover)
                ],
              ),
              onTap: (){
                Get.to(() => TripsView());
              },
            ),
            SizedBox(height: 36)
          ],
        ),
      ),
    );
  }
}
