import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:rtb_driver/app/modules/finish_trip/views/finish_trip_view.dart';
import 'package:rtb_driver/app/modules/menus/views/menus_view.dart';
import 'package:rtb_driver/app/modules/notification/views/notification_view.dart';
import 'package:rtb_driver/app/modules/pit_stop/views/pit_stop_view.dart';
import 'package:rtb_driver/app/widgets/colored_button.dart';

import '../controllers/en_route_controller.dart';

class EnRouteView extends GetView<EnRouteController> {

  EnRouteController _enRouteController = Get.put(EnRouteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            GetBuilder<EnRouteController>(
              id: "map_builder",
              init: EnRouteController(),
              builder: (value) => Container(
                width: double.maxFinite,
                height: double.maxFinite,
                child: GoogleMap(
                  mapType: MapType.normal,
                  myLocationButtonEnabled: false,
                  myLocationEnabled: true,
                  initialCameraPosition: _enRouteController.kGooglePlex,
                  onMapCreated: (GoogleMapController controller) {
                    _enRouteController.gmapController.complete(controller);
                    _enRouteController.googleMapController = controller;
                    _enRouteController.checkCurrentLocation(context);
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
                  padding: EdgeInsets.only(left: 10, right: 10,top: 40,bottom: 12),
                  child: Row(
                    children: [
                      GestureDetector(
                        child: Container(
                          width: 55,
                          height: 55,
                          color: Colors.transparent,
                          child: Center(
                            child: Image.asset("assets/ic_menus.png", height: 24, width: 24),
                          ),
                        ),
                        onTap: (){
                          Get.to(() => MenusView());
                        },
                      ),
                      Expanded(child: SizedBox(), flex: 1),
                      Text("En Route", style: TextStyle(
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
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 135, left: 24, right: 24),
              width: double.maxFinite,
              height: 150,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(24))
                ),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Image.asset("assets/ic_yellow_from.png", width: 24, height: 24),
                          SizedBox(height: 8),
                          Image.asset("assets/ic_dots.png", width: 8, height: 25),
                          SizedBox(height: 8),
                          Image.asset("assets/ic_yellow_location.png", width: 24, height: 24),
                        ],
                      ),

                      SizedBox(width: 16),

                      Expanded(child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("From", style: TextStyle(
                              color: Color.fromRGBO(135, 141, 156, 1.0),
                              fontSize: 12,
                              fontFamily: "PoppinsRegular",
                          )),

                          Text("Kuala Lumpur", style: TextStyle(
                              color: Color.fromRGBO(63, 61, 86, 1.0),
                              fontSize: 14,
                              fontFamily: "PoppinsMedium",
                          )),
                          SizedBox(height: 24),
                          Text("To", style: TextStyle(
                              color: Color.fromRGBO(135, 141, 156, 1.0),
                              fontSize: 12,
                              fontFamily: "PoppinsRegular",
                          )),
                          Text("Penang", style: TextStyle(
                              color: Color.fromRGBO(63, 61, 86, 1.0),
                              fontSize: 14,
                              fontFamily: "PoppinsMedium",
                          )),
                        ],
                      ), flex: 1),

                      Container(
                        width: 1,
                        height: double.maxFinite,
                        color: Color.fromRGBO(234, 237, 241, 1.0),
                      ),

                      Expanded(child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                         Row(
                           children: [
                             SizedBox(width: 16),
                             Text("ETA",
                                 textAlign: TextAlign.start,
                                 style: TextStyle(
                                     color: Color.fromRGBO(135, 141, 156, 1.0),
                                     fontSize: 14,
                                     fontFamily: "PoppinsRegular",
                                 ))
                           ],
                         ),


                          SizedBox(height: 8),

                          Row(
                            children: [
                              SizedBox(width: 16),
                              Expanded(child: GetBuilder<EnRouteController>(
                                  id: "end_route",
                                  init: EnRouteController(),
                                  builder: (value) => Text(value.isEnroute ? "2 Hour 20 Min" : "You have reached your destination",
                                      style: TextStyle(
                                      color: Color.fromRGBO(255, 205, 56, 1.0),
                                      fontSize: 14,
                                      height: 1.5,
                                      fontFamily: "PoppinsMedium",
                                  ))), flex: 1),
                            ],
                          )
                        ],
                      ), flex: 1),

                      SizedBox(width: 16),
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

                        Container(
                          width: 65,
                          height: 65,
                          child: Stack(
                            children: [
                              Image.asset("assets/ic_km.png", height: 65, width: 65),
                             Container(
                               width: double.maxFinite,
                               height: double.maxFinite,
                               child:  Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [
                                   Text("80", style: TextStyle(
                                       color: Colors.white,
                                       fontFamily: "PoppinsBold",
                                       fontSize: 14
                                   )),
                                   Text("km/h", style: TextStyle(
                                       color: Color.fromRGBO(195, 194, 204, 1.0),
                                       fontFamily: "PoppinsRegular",
                                       fontSize: 10
                                   )),
                                 ],
                               ),
                             )
                            ],
                          ),
                        ),

                        Expanded(child: SizedBox(),flex: 1),

                        Container(
                          width: 65,
                          height: 65,
                          child: Center(
                            child: Image.asset("assets/ic_current_location.png", height: 28, width: 28),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(16))
                          ),
                        ),

                        SizedBox(width: 24),
                      ],
                    ),

                    SizedBox(height: 24),

                    GetBuilder<EnRouteController>(
                      id: "end_route",
                      init: EnRouteController(),
                      builder: (value) => Stack(
                      children: [
                        Visibility(child: GestureDetector(
                          child: Container(
                            padding: EdgeInsets.only(left: 24, right: 24, top: 16, bottom: 16),
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(255, 205, 56, 1.0),
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(25),
                                    topRight: Radius.circular(25))
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 55,
                                    height: 55,
                                    decoration: BoxDecoration(
                                        color: Colors.transparent
                                    ),
                                  ),

                                  Expanded(child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text("12:32", style: TextStyle(
                                          color: Color.fromRGBO(50, 50, 51, 1.0),
                                          fontFamily: "PoppinsBold",
                                          fontSize: 20
                                      )),

                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text("2 Hours", style: TextStyle(
                                              color: Color.fromRGBO(50, 50, 51, 1.0),
                                              fontFamily: "PoppinsMedium",
                                              fontSize: 16
                                          )),

                                          SizedBox(width: 16),

                                          Image.asset("assets/ic_black_circle.png"),

                                          SizedBox(width: 16),

                                          Text("120.6 km", style: TextStyle(
                                              color: Color.fromRGBO(50, 50, 51, 1.0),
                                              fontFamily: "PoppinsMedium",
                                              fontSize: 16
                                          ))
                                        ],
                                      )
                                    ],
                                  ), flex: 1),

                                  GestureDetector(
                                    child: Card(
                                      elevation: 1.5,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(16))
                                      ),
                                      child: Container(
                                        width: 55,
                                        height: 55,
                                        child: Center(
                                          child: Image.asset("assets/ic_black_uparrow.png", height: 20, width: 20),
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(Radius.circular(16))
                                        ),
                                      ),
                                    ),
                                    onTap: (){
                                      _enRouteController.setMenuShowed(true);
                                    },
                                  )
                                ],
                              ),
                            ),
                          ),
                          onTap: (){
                            Get.to(() => PitStopView())?.then((value_route) {
                              value.setEnRoute(false);
                            });
                          },
                        ), visible: value.isEnroute),

                        Visibility(child: GestureDetector(
                          child:  Container(
                            width: double.maxFinite,
                            height: 55,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(255, 205, 56, 1.0)
                            ),
                            child: Center(
                              child: Text("End Trip", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: "PoppinsBold",
                              )),
                            ),
                          ),
                          onTap: (){
                             _enRouteController.setConfirm(true,1);
                          },
                        ), visible: !value.isEnroute)
                      ],
                    ))

                  ],
                ),
              ),
            )),

            GetBuilder<EnRouteController>(
                id: "menu_show",
                init: EnRouteController(),
                builder: (value) => Visibility(child: Column(
                  children: [
                    Expanded(child: SizedBox(),flex: 1),
                    Row(
                      children: [
                        Expanded(child: SizedBox(),flex: 1),
                        Container(
                          width: 50,
                          height: 175,
                          child: Card(
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Column(
                                children: [
                                  GestureDetector(
                                    child: Image.asset("assets/ic_black_dropdown.png", width: 16, height: 16),
                                    onTap: (){
                                      _enRouteController.setMenuShowed(false);
                                    },
                                  ),
                                  SizedBox(height: 24),
                                  GestureDetector(
                                    child: Image.asset("assets/img_alert.png", width: 36, height: 36),
                                    onTap: (){
                                      _enRouteController.setEmergency(true);
                                      print("cuyy");
                                    },
                                  ),
                                  SizedBox(height: 16),
                                  Container(
                                    width: double.maxFinite,
                                    height: 1,
                                    color: Color.fromRGBO(235, 235, 235, 1.0),
                                  ),
                                  SizedBox(height: 16),
                                  GestureDetector(
                                    child: Image.asset("assets/img_share.png", width: 36, height: 36),
                                    onTap: (){
                                      MapsLauncher.launchQuery('1600 Amphitheatre Pkwy, Mountain View, CA 94043, USA');
                                      MapsLauncher.launchCoordinates(37.4220041, -122.0862462);
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 30)
                      ],
                    ),
                    SizedBox(height: 16)
                  ],
                ), visible: value.isMenuShowed)),

            GetBuilder<EnRouteController>(
              id: "confirm",
              init: EnRouteController(),
              builder: (value) => Visibility(child:
              Container(
                height: double.maxFinite,
                width: double.maxFinite,
                color: Colors.transparent,
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Center(
                    child: Container(
                      margin: EdgeInsets.only(left: 24, right: 24),
                      width: double.maxFinite,
                      height: 355,
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        elevation: 1.5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(24),
                          child: Column(
                            children: [
                              Image.asset("assets/img_thankyou.png"),
                              SizedBox(height: 16),
                              Text(value.confirmType == 0 ? "Are you ready to begin trip?"
                                  : "Confirm End Trip?", style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "PoppinsRegular",
                              )),

                              Padding(padding: EdgeInsets.only(top: 24,left: 24, right: 24, bottom: 16), child: GestureDetector(
                                child: ColoredButton(height: 45, width: double.maxFinite, title: "Confirm",
                                    color: Color.fromRGBO(255, 205, 56, 1.0)),
                                onTap: (){
                                  if(value.confirmType == 0){
                                    value.setConfirm(!value.isConfirmShowed,1);
                                  }
                                  else{
                                    Get.to(() => FinishTripView());
                                  }
                                },
                              )),

                              GestureDetector(
                                child: Text("Back", style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromRGBO(135, 141, 156, 1.0),
                                    fontFamily: "PoppinsMedium",
                                )),
                                onTap: (){
                                  if(value.confirmType == 0){
                                    Get.back();
                                  }
                                  else{
                                     value.setConfirm(false,1);
                                  }
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ), visible: value.isConfirmShowed)),

            GetBuilder<EnRouteController>(
                id: "emergency_call",
                init: EnRouteController(),
                builder: (value) => Visibility(child: Container(
                  height: double.maxFinite,
                  width: double.maxFinite,
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Center(
                      child: Container(
                        margin: EdgeInsets.only(left: 24, right: 24),
                        width: double.maxFinite,
                        height: 300,
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          elevation: 1.5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(24),
                            child: Column(
                              children: [
                                SizedBox(height: 24),
                                Row(
                                  children: [
                                    Expanded(child: Text("For Emergency Calls Only",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black,
                                            fontFamily: "PoppinsBold",
                                        )), flex: 1),
                                    GestureDetector(
                                      child: Image.asset("assets/ic_close_black.png", height: 24, width: 24),
                                      onTap: (){
                                        value.setEmergency(false);
                                      },
                                    )
                                  ],
                                ),

                                SizedBox(height: 16),

                                Image.asset("assets/img_emergency.png", height: 90,width: 90),

                                Padding(padding: EdgeInsets.only(top: 24,left: 24, right: 24, bottom: 16), child: GestureDetector(
                                  child: ColoredButton(height: 45, width: double.maxFinite, title: "Call Operator",
                                      color: Color.fromRGBO(135, 141, 156, 1.0)),
                                  onTap: (){

                                  },
                                )),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ), visible: value.isEmergencyShowed)),
          ],
        ),
      ),
    );
  }
}
