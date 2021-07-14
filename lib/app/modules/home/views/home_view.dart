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
      body: Stack(
        children: [
          Image.asset("assets/home_background.png", width: double.maxFinite,
              height: double.maxFinite, fit: BoxFit.fill),

          Padding(
              padding: EdgeInsets.all(24),
              child: Column(
                children: [
                  SizedBox(height: 12),
                  Row(
                    children: [
                      GestureDetector(
                        child: Image.asset("assets/ic_menus.png", height: 24, width: 24),
                        onTap: (){
                          Get.to(() => MenusView());
                        },
                      ),
                      Expanded(child: SizedBox(), flex: 1),
                      Text("Home", style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(63, 61, 86, 1.0)
                      )),
                      Expanded(child: SizedBox(), flex: 1),
                      GestureDetector(
                        child: Image.asset("assets/ic_notification.png", height: 24, width: 24),
                        onTap: (){
                          Get.to(() => NotificationView());
                        },
                      )
                    ],
                  ),
                  SizedBox(height: 16),
                  Image.asset("assets/img_driver_home.png", height: 100, width: 100, fit: BoxFit.fitHeight),
                  SizedBox(height: 16),
                  Text("John Travis Scott Travolta", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(63, 61, 86, 1.0)
                  )),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Bus No.", style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(63, 61, 86, 1.0)
                      )),

                      SizedBox(width: 6),

                      Text("SBA4125", style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
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
                          SizedBox(height: 8),
                          Text("20", style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(63, 61, 86, 1.0)
                          )),
                          SizedBox(height: 8),
                          Text("Total Trips", style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(63, 61, 86, 1.0)
                          )),
                        ],
                      ),

                      Expanded(child: SizedBox(), flex: 1),

                      Column(
                        children: [
                          Image.asset("assets/ic_speed.png", height: 24, width: 24),
                          SizedBox(height: 8),
                          Text("30 km", style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(63, 61, 86, 1.0)
                          )),
                          SizedBox(height: 8),
                          Text("Total Distance", style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(63, 61, 86, 1.0)
                          )),
                        ],
                      ),

                      Expanded(child: SizedBox(), flex: 1),

                      Column(
                        children: [
                          Image.asset("assets/ic_clock.png", height: 24, width: 24),
                          SizedBox(height: 8),
                          Text("10.6", style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(63, 61, 86, 1.0)
                          )),
                          SizedBox(height: 8),
                          Text("Total Hours", style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(63, 61, 86, 1.0)
                          )),
                        ],
                      )
                    ],
                  ),

                  GestureDetector(
                    child: Container(
                      margin: EdgeInsets.only(top: 24),
                      padding: EdgeInsets.only(left: 36, right: 36, top: 10, bottom: 10),
                      child: Text("View Profile", style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
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

          Positioned.fill(child: Align(
            child: Container(
              padding: EdgeInsets.all(24),
              width: double.maxFinite,
              height: MediaQuery. of(context). size. height / 2.1,
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
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(63, 61, 86, 1.0)
                      )),

                      Expanded(child: SizedBox(), flex: 1),

                      Text("Ongoing", style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(22, 212, 98, 1.0)
                      ))
                    ],
                  ),

                  GestureDetector(
                    child: Container(
                      margin: EdgeInsets.only(top: 24),
                      width: double.maxFinite,
                      padding: EdgeInsets.only(left: 24, right: 24, top: 16,bottom: 16),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(248, 255, 249, 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          border: Border.all(
                              width: 1,
                              color: Color.fromRGBO(22, 212, 98, 1.0)
                          )
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text("10:15 AM", style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(63, 61, 86, 1.0)
                              )),

                              Expanded(child: SizedBox(), flex: 1),

                              Text("1:05 PM", style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(63, 61, 86, 1.0)
                              )),
                            ],
                          ),

                          SizedBox(height: 8),

                          Row(
                            children: [
                              Text("17-06-2021", style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(22, 212, 98, 1.0)
                              )),

                              Expanded(child: SizedBox(), flex: 1),

                              Text("17-06-2021", style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(22, 212, 98, 1.0)
                              )),
                            ],
                          ),

                          SizedBox(height: 16),

                          Row(
                            children: [
                              Container(
                                child: Text("From", style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
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
                                    fontWeight: FontWeight.w700,
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

                          SizedBox(height: 16),

                          Row(
                            children: [
                              Expanded(child: Column(
                                children: [
                                  Text("TBS (Terminal Bersepadu Selatan)", style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromRGBO(63, 61, 86, 1.0)
                                  )),

                                  SizedBox(height: 6),

                                  Text("Kuala Lumpur", style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromRGBO(22, 212, 98, 1.0)
                                  ))
                                ],
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                              ), flex: 2),

                              Expanded(child: SizedBox(), flex: 1),

                              Expanded(child: Column(
                                children: [
                                  Text("TBS (Terminal Bersepadu Selatan)",
                                      textAlign: TextAlign.end,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: Color.fromRGBO(63, 61, 86, 1.0)
                                      )),

                                  SizedBox(height: 6),

                                  Text("Kuala Lumpur", style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
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
                    onTap: (){
                      Get.to(() => TripDetailsView());
                    },
                  ),

                  Expanded(child: SizedBox(), flex: 1),

                  Padding(padding: EdgeInsets.only(bottom: 24), child: GestureDetector(
                    child: ColoredButton(height: 45, width: double.maxFinite, title: "View All Trips",
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
