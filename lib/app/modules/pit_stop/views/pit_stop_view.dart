import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rtb_driver/app/modules/chat/views/chat_view.dart';
import 'package:rtb_driver/app/modules/finish_trip/views/finish_trip_view.dart';
import 'package:rtb_driver/app/modules/menus/views/menus_view.dart';
import 'package:rtb_driver/app/modules/notification/views/notification_view.dart';

import '../controllers/pit_stop_controller.dart';

class PitStopView extends GetView<PitStopController> {

  PitStopController _pitStopController = Get.put(PitStopController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      child: Stack(
        children: [
          GetBuilder<PitStopController>(
            id: "map_builder",
            init: PitStopController(),
            builder: (value) => Container(
              width: double.maxFinite,
              height: double.maxFinite,
              child: GoogleMap(
                mapType: MapType.normal,
                myLocationButtonEnabled: false,
                myLocationEnabled: true,
                initialCameraPosition: _pitStopController.kGooglePlex,
                onMapCreated: (GoogleMapController controller) {
                  _pitStopController.gmapController.complete(controller);
                  _pitStopController.googleMapController = controller;
                  _pitStopController.checkCurrentLocation(context);
                },
              ),
            ),
          ),

          Container(
            width: double.maxFinite,
            child: Card(
              color: Colors.white,
              elevation: 2,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0)
                  )
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 24, right: 24,top: 45,bottom: 24),
                child: Row(
                  children: [
                    GestureDetector(
                      child: Image.asset("assets/ic_menus.png", width: 24, height: 24),
                      onTap: (){
                        Get.to(() => MenusView());
                      },
                    ),
                    Expanded(child: SizedBox(), flex: 1),
                    Text("Pit Stop", style: TextStyle(
                        fontSize: 18,
                        fontFamily: "PoppinsBold",
                        color: Color.fromRGBO(63, 61, 86, 1.0)
                    )),
                    Expanded(child: SizedBox(), flex: 1),
                    GestureDetector(
                      child: Image.asset("assets/ic_notification.png", width: 24, height: 24),
                      onTap: (){
                        Get.to(() => NotificationView());
                      },
                    )
                  ],
                ),
              ),
            ),
          ),

          Positioned.fill(child: Align(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  Expanded(child: SizedBox(), flex: 1),
                  Row(
                    children: [
                      SizedBox(width: 24),

                      Visibility(child: Container(
                        width: 55,
                        height: 55,
                        child: Stack(
                          children: [
                            Image.asset("assets/ic_km.png", height: 100, width: 100),
                            Container(
                              width: double.maxFinite,
                              height: double.maxFinite,
                              child:  Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("80", style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16
                                  )),
                                  Text("km/h", style: TextStyle(
                                      color: Color.fromRGBO(195, 194, 204, 1.0),
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12
                                  )),
                                ],
                              ),
                            )
                          ],
                        ),
                      ), visible: false),

                      Expanded(child: SizedBox(),flex: 1),

                      GestureDetector(
                        child: Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(16))
                          ),
                          child: Container(
                            width: 55,
                            height: 55,
                            child: Image.asset("assets/ic_yellow_message.png", height: 16, width: 16),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(16))
                            ),
                          ),
                        ),
                        onTap: (){
                          Get.to(() => ChatView());
                        },
                      ),

                      SizedBox(width: 24),
                    ],
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 6, left: 24, right: 24),
                    width: double.maxFinite,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(24))
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                              Text("Pit Stop", style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(135, 141, 156, 1.0),
                                fontFamily: "PoppinsRegular",
                              )),
                              SizedBox(height: 6),
                              Text("R&R Sungai Buloh Southbound", style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromRGBO(63, 61, 86, 1.0),
                                  fontFamily: "PoppinsMedium",
                              )),
                              Container(
                                margin: EdgeInsets.only(top: 16,bottom: 16),
                                height: 1,
                                width: double.maxFinite,
                                color: Color.fromRGBO(234, 237, 241, 1.0),
                              ),
                            Row(
                              children: [
                               Expanded(child: Column(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text("Duration", style: TextStyle(
                                       fontSize: 16,
                                       color: Color.fromRGBO(135, 141, 156, 1.0),
                                       fontFamily: "PoppinsRegular",
                                   )),
                                   SizedBox(height: 6),
                                   Container(
                                     width: double.maxFinite,
                                     child: Card(
                                       child: Padding(
                                         padding: EdgeInsets.all(16),
                                         child: Row(
                                           children: [
                                             Expanded(child:  Text("15 minutes", style: TextStyle(
                                                 fontSize: 16,
                                                 color: Color.fromRGBO(135, 141, 156, 1.0),
                                                 fontFamily: "PoppinsRegular",
                                             )),flex: 1),
                                             Image.asset("assets/ic_yellow_dropdown.png")
                                           ],
                                         ),
                                       ),
                                     ),
                                   ),
                                 ],
                               ), flex: 1),
                                SizedBox(width: 24),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Timer", style: TextStyle(
                                        fontSize: 16,
                                        color: Color.fromRGBO(135, 141, 156, 1.0),
                                        fontFamily: "PoppinsRegular",
                                    )),
                                    SizedBox(height: 6),
                                    Text("00:00:00", style: TextStyle(
                                        fontSize: 18,
                                        color: Color.fromRGBO(255, 205, 56, 1.0),
                                        fontFamily: "PoppinsMedium",
                                    )),
                                  ],
                                ),
                                SizedBox(width: 24)
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 16),

                 GestureDetector(
                   child: Container(
                     width: double.maxFinite,
                     height: 55,
                     decoration: BoxDecoration(
                         color: Color.fromRGBO(255, 205, 56, 1.0)
                     ),
                     child: Center(
                       child: Text("Notify Passengers", style: TextStyle(
                         color: Colors.white,
                         fontSize: 16,
                         fontFamily: "PoppinsBold",
                         decoration: TextDecoration.none
                       )),
                     ),
                   ),
                   onTap: (){
                     Get.back();
                   },
                 )
                ],
              ),
            ),
          )),
        ],
      ),
    );
  }
}
