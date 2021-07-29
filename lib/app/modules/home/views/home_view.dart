import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rtb_driver/app/modules/menus/views/menus_view.dart';
import 'package:rtb_driver/app/modules/notification/views/notification_view.dart';
import 'package:rtb_driver/app/modules/profile/views/profile_view.dart';
import 'package:rtb_driver/app/modules/trip_details/views/trip_details_view.dart';
import 'package:rtb_driver/app/modules/trips/views/trips_view.dart';
import 'package:rtb_driver/app/widgets/colored_button.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.asset("assets/home_background.png", width: double.maxFinite,
              height: double.maxFinite, fit: BoxFit.fill),

          Column(
            children: [
              Padding(padding: EdgeInsets.only(left: 10, right: 10, top: 40),
                 child: Row(
                   children: [
                     GestureDetector(
                       child: Container(
                         width: 55,
                         height: 55,
                         color: Colors.transparent,
                         child: Center(
                           child: Image.asset("assets/ic_menus.png", height: 28, width: 28),
                         ),
                       ),
                       onTap: (){
                         Get.to(() => MenusView());
                       },
                     ),
                     Expanded(child: SizedBox(), flex: 1),
                     Text("Home", style: TextStyle(
                         fontSize: 18,
                         fontFamily: "PoppinsBold",
                         color: Color.fromRGBO(63, 61, 86, 1.0)
                     )),
                     Expanded(child: SizedBox(), flex: 1),
                     GestureDetector(
                       child: Container(
                         width: 55,
                         height: 55,
                         color: Colors.transparent,
                         child: Center(
                           child: Image.asset("assets/ic_notification.png", height: 28, width: 28),
                         ),
                       ),
                       onTap: (){
                         Get.to(() => NotificationView());
                       },
                     )
                   ],
                 ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 24, right: 24),
                child: Column(
                  children: [
                    Image.asset("assets/img_driver_home.png", height: 100, width: 100, fit: BoxFit.fitHeight),
                    SizedBox(height: 16),
                    Text("John Travis Scott Travolta", style: TextStyle(
                        fontSize: 18,
                        fontFamily: "PoppinsBold",
                        color: Color.fromRGBO(63, 61, 86, 1.0)
                    )),
                    // SizedBox(height: 6),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Bus No.", style: TextStyle(
                            fontSize: 16,
                            fontFamily: "PoppinsRegular",
                            color: Color.fromRGBO(63, 61, 86, 1.0)
                        )),

                        SizedBox(width: 6),

                        Text("SBA4125", style: TextStyle(
                            fontSize: 16,
                            fontFamily: "PoppinsBold",
                            color: Color.fromRGBO(63, 61, 86, 1.0)
                        )),
                      ],
                    ),

                    SizedBox(height: 16),

                    Row(
                      children: [
                        Column(
                          children: [
                            Image.asset("assets/ic_trips.png", height: 24, width: 24),
                            SizedBox(height: 4),
                            Text("20", style: TextStyle(
                                fontSize: 16,
                                fontFamily: "PoppinsBold",
                                color: Color.fromRGBO(63, 61, 86, 1.0)
                            )),
                            SizedBox(height: 4),
                            Text("Total Trips", style: TextStyle(
                                fontSize: 14,
                                fontFamily: "PoppinsMedium",
                                color: Color.fromRGBO(63, 61, 86, 1.0)
                            )),
                          ],
                        ),

                        Expanded(child: SizedBox(), flex: 1),

                        Column(
                          children: [
                            Image.asset("assets/ic_speed.png", height: 24, width: 24),
                            SizedBox(height: 4),
                            Text("30 km", style: TextStyle(
                                fontSize: 16,
                                fontFamily: "PoppinsBold",
                                color: Color.fromRGBO(63, 61, 86, 1.0)
                            )),
                            SizedBox(height: 4),
                            Text("Total Distance", style: TextStyle(
                                fontSize: 14,
                                fontFamily: "PoppinsMedium",
                                color: Color.fromRGBO(63, 61, 86, 1.0)
                            )),
                          ],
                        ),

                        Expanded(child: SizedBox(), flex: 1),

                        Column(
                          children: [
                            Image.asset("assets/ic_clock.png", height: 24, width: 24),
                            SizedBox(height: 4),
                            Text("10.6", style: TextStyle(
                                fontSize: 16,
                                fontFamily: "PoppinsBold",
                                color: Color.fromRGBO(63, 61, 86, 1.0)
                            )),
                            SizedBox(height: 4),
                            Text("Total Hours", style: TextStyle(
                                fontSize: 14,
                                fontFamily: "PoppinsMedium",
                                color: Color.fromRGBO(63, 61, 86, 1.0)
                            )),
                          ],
                        )
                      ],
                    ),

                    GestureDetector(
                      child: Container(
                        margin: EdgeInsets.only(top: 16),
                        padding: EdgeInsets.only(left: 36, right: 36, top: 10, bottom: 10),
                        child: Text("View Profile", style: TextStyle(
                            fontSize: 16,
                            fontFamily: "PoppinsBold",
                            color: Color.fromRGBO(255, 205, 56, 1.0)
                        )),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(8))
                        ),
                      ),
                      onTap: (){
                        Get.to(() => ProfileView());
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),

          Positioned.fill(child: Align(
            child: Container(
              padding: EdgeInsets.all(24),
              width: double.maxFinite,
              height: MediaQuery. of(context). size. height / 2.15,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Scheduled Trip", style: TextStyle(
                          fontSize: 16,
                          fontFamily: "PoppinsMedium",
                          color: Color.fromRGBO(63, 61, 86, 1.0)
                      )),

                      Expanded(child: SizedBox(), flex: 1),

                      Text("Ongoing", style: TextStyle(
                          fontSize: 14,
                          fontFamily: "PoppinsMedium",
                          color: Color.fromRGBO(22, 212, 98, 1.0)
                      ))
                    ],
                  ),

                  GestureDetector(
                    child: Container(
                      margin: EdgeInsets.only(top: 14),
                      width: double.maxFinite,
                      height: 235,
                      color: Colors.white,
                      child: Stack(
                        children: [
                          Positioned.fill(child: Align(
                            child: Container(
                              margin: EdgeInsets.only(top: 2),
                              width: double.maxFinite,
                              height: 220,
                              padding: EdgeInsets.only(left: 24, right: 24, top: 16,bottom: 16),
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(248, 255, 249, 1.0),
                                  borderRadius: BorderRadius.all(Radius.circular(16)),
                                  border: Border.all(
                                      width: 1,
                                      color: Color.fromRGBO(22, 212, 98, 1.0)
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(220, 220, 224, 0.5),
                                      blurRadius: 0.5,
                                      spreadRadius: 0.5,
                                      offset: Offset(0.5, 0.5), // shadow direction: bottom right
                                    )
                                  ]
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text("10:15 AM", style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "PoppinsMedium",
                                          color: Color.fromRGBO(63, 61, 86, 1.0)
                                      )),

                                      Expanded(child: SizedBox(), flex: 1),

                                      Text("1:05 PM", style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "PoppinsMedium",
                                          color: Color.fromRGBO(63, 61, 86, 1.0)
                                      )),
                                    ],
                                  ),

                                  SizedBox(height: 8),

                                  Row(
                                    children: [
                                      Text("17-06-2021", style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: "PoppinsBold",
                                          color: Color.fromRGBO(22, 212, 98, 1.0)
                                      )),

                                      Expanded(child: SizedBox(), flex: 1),

                                      Text("17-06-2021", style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: "PoppinsBold",
                                          color: Color.fromRGBO(22, 212, 98, 1.0)
                                      )),
                                    ],
                                  ),

                                  SizedBox(height: 8),

                                  Row(
                                    children: [
                                      Container(
                                        child: Text("From", style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: "PoppinsMedium",
                                            color: Colors.white
                                        )),
                                        decoration: BoxDecoration(
                                            color: Color.fromRGBO(63, 61, 86, 1.0),
                                            borderRadius: BorderRadius.all(Radius.circular(20))
                                        ),
                                        padding: EdgeInsets.only(left: 12, right: 12, top: 4,bottom: 4),
                                      ),

                                      Expanded(child: Image.asset("assets/ic_track.png"), flex: 1),

                                      Container(
                                        child: Text("To", style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: "PoppinsMedium",
                                            color: Colors.white
                                        )),
                                        decoration: BoxDecoration(
                                            color: Color.fromRGBO(63, 61, 86, 1.0),
                                            borderRadius: BorderRadius.all(Radius.circular(20))
                                        ),
                                        padding: EdgeInsets.only(left: 12, right: 12, top: 4,bottom: 4),
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 8),

                                  Row(
                                    children: [
                                      Expanded(child: Column(
                                        children: [
                                          Text("Sungai Nibong Bus Terminal", style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: "PoppinsMedium",
                                              color: Color.fromRGBO(63, 61, 86, 1.0)
                                          )),

                                          SizedBox(height: 6),

                                          Text("Kuala Lumpur", style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: "PoppinsBold",
                                              color: Color.fromRGBO(22, 212, 98, 1.0)
                                          ))
                                        ],
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                      ), flex: 2),

                                      Expanded(child: SizedBox(), flex: 1),

                                      Expanded(child: Column(
                                        children: [
                                          Text("Sungai Nibong Bus Terminal",
                                              textAlign: TextAlign.end,
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontFamily: "PoppinsMedium",
                                                  color: Color.fromRGBO(63, 61, 86, 1.0)
                                              )),

                                          SizedBox(height: 6),

                                          Text("Kuala Lumpur", style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: "PoppinsBold",
                                              color: Color.fromRGBO(22, 212, 98, 1.0)
                                          ))
                                        ],
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                      ), flex: 2),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            alignment: Alignment.center,
                          )),

                          Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(child: SizedBox(), flex: 1),
                                  Stack(
                                    children: [
                                      Container(
                                        height: 19,
                                        width: 35,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),
                                                bottomRight: Radius.circular(25)),
                                            border: Border(
                                                bottom: BorderSide(
                                                    color: Color.fromRGBO(22, 212, 98, 1.0),
                                                    width: 1),
                                                right: BorderSide(
                                                    color: Color.fromRGBO(22, 212, 98, 1.0),
                                                    width: 1),
                                                top: BorderSide(
                                                    color: Color.fromRGBO(22, 212, 98, 1.0),
                                                    width: 1),
                                                left: BorderSide(
                                                    color: Color.fromRGBO(22, 212, 98, 1.0),
                                                    width: 1)
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color.fromRGBO(220, 220, 224, 0.5),
                                                blurRadius: 0.5,
                                                spreadRadius: 0.5,
                                                offset: Offset(0.5, 0.5), // shadow direction: bottom right
                                              )
                                            ]
                                        ),
                                        margin: EdgeInsets.only(top: 1),
                                      ),

                                      Container(
                                        height: 8,
                                        width: 35,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                  Expanded(child: SizedBox(), flex: 1)
                                ],
                              ),

                              Expanded(child: SizedBox(), flex: 1),

                              Row(
                                children: [
                                  Expanded(child: SizedBox(), flex: 1),
                                  Stack(
                                    children: [
                                      Container(
                                        height: 20,
                                        width: 35,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(25),
                                                topRight: Radius.circular(25)),
                                            border: Border(
                                                bottom: BorderSide(
                                                    color: Color.fromRGBO(22, 212, 98, 1.0),
                                                    width: 1),
                                                right: BorderSide(
                                                    color: Color.fromRGBO(22, 212, 98, 1.0),
                                                    width: 1),
                                                top: BorderSide(
                                                    color: Color.fromRGBO(22, 212, 98, 1.0),
                                                    width: 1),
                                                left: BorderSide(
                                                    color: Color.fromRGBO(22, 212, 98, 1.0),
                                                    width: 1)
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color.fromRGBO(220, 220, 224, 0.5),
                                                blurRadius: 0.5,
                                                spreadRadius: 0.5,
                                                offset: Offset(-0.5, -0.5), // shadow direction: bottom right
                                              )
                                            ]
                                        ),
                                        margin: EdgeInsets.only(bottom: 1),
                                      ),

                                      Positioned.fill(child: Align(
                                        child: Container(
                                          height: 6,
                                          width: 35,
                                          color: Colors.white,
                                        ),
                                        alignment: Alignment.bottomCenter,
                                      ))
                                    ],
                                  ),
                                  Expanded(child: SizedBox(), flex: 1)
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    onTap: (){
                      Get.to(() => TripDetailsView());
                    },
                  ),

                  Expanded(child: SizedBox(), flex: 1),

                  Padding(padding: EdgeInsets.only(bottom: 0), child: GestureDetector(
                    child: ColoredButton(height: 55, width: double.maxFinite, title: "View All Trips",
                        color: Color.fromRGBO(255, 205, 56, 1.0)),
                    onTap: (){
                      Get.to(() => TripsView());
                    },
                  )),
                ],
              ),
            ),
            alignment: Alignment.bottomCenter
          ),
          )
        ],
      ),
    );
  }
}
