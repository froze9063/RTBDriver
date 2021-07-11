import 'package:flutter/material.dart';

import 'package:get/get.dart';

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
            SizedBox(height: 55),
            Row(
              children: [
                Expanded(child: SizedBox(), flex: 1),
                GestureDetector(
                  child: Image.asset("assets/ic_close_black.png"),
                  onTap: (){
                    Get.back();
                  },
                ),
                SizedBox(width: 24),
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
                    fontWeight: FontWeight.bold
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
                        fontWeight: FontWeight.w500
                    )), flex: 1),
                    SizedBox(width: 24)
                  ],
                )
              ],
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("View All Trips", style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                )),
                SizedBox(width: 8),
                Image.asset("assets/ic_yellow_arrow_right.png", height: 18, width: 18, fit: BoxFit.cover)
              ],
            ),
            SizedBox(height: 36)
          ],
        ),
      ),
    );
  }
}
