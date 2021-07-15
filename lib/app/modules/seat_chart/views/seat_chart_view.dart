import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/seat_chart_controller.dart';

class SeatChartView extends GetView<SeatChartController> {

  SeatChartController _seatChartController = Get.put(SeatChartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 24),
              Row(
                children: [
                  SizedBox(width: 24),
                  GestureDetector(
                    child: Image.asset("assets/ic_new_back_yellow.png", height: 18, width: 18),
                    onTap: (){
                      Get.back();
                    },
                  ),
                  Expanded(child: Text("Seat Chart",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: "PoppinsBold",
                          color: Color.fromRGBO(63, 61, 86, 1.0)
                      ))),
                  SizedBox(width: 24),
                ],
              ),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image.asset("assets/img_available_seat.png", width: 36, height: 36),
                      SizedBox(height: 16),
                      Text("Vacant",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: "PoppinsRegular",
                              color: Color.fromRGBO(63, 61, 86, 1.0)
                          ))
                    ],
                  ),

                  SizedBox(width: 55),

                  Column(
                    children: [
                      Image.asset("assets/img_booked_seat.png", width: 36, height: 36),
                      SizedBox(height: 16),
                      Text("Booked",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: "PoppinsRegular",
                              color: Color.fromRGBO(63, 61, 86, 1.0)
                          ))
                    ],
                  ),
                ],
              ),

              SizedBox(height: 16),

              Expanded(child: Container(
                width: double.maxFinite,
                height: double.maxFinite,
                child: Stack(
                  children: [
                    Image.asset("assets/img_seat_background.png", width: double.maxFinite,
                        height: double.maxFinite, fit: BoxFit.fill),

                    Padding(padding: EdgeInsets.all(36), child:  GridView.count(
                      childAspectRatio: 1.65,
                      crossAxisCount: 4,
                      children: List.generate(_seatChartController.seatsList.length, (index) {
                        return Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Visibility(child: Text("A1",
                              style: TextStyle(
                                fontFamily: "PoppinsRegular"
                              ),
                              ), visible: index % 2 == 0),
                              SizedBox(width: 4),
                              Image.asset(_seatChartController.seatsList[index], width: 36, height: 36),
                              SizedBox(width: 4),
                              Visibility(child: Text("A2",
                                  style: TextStyle(
                                      fontFamily: "PoppinsRegular"
                                  )), visible: index % 2 != 0),
                            ],
                          ),
                        );
                      }),
                    ))
                  ],
                ),
              ), flex: 1),

              SizedBox(height: 150)
            ],
          ),
        ),
      ),
    );;
  }
}
