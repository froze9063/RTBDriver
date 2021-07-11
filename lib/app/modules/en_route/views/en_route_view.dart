import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
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
                  padding: EdgeInsets.only(left: 24, right: 24,top: 45,bottom: 24),
                  child: Row(
                    children: [
                      GestureDetector(
                        child: Image.asset("assets/ic_menus.png"),
                        onTap: (){
                          Get.to(() => MenusView());
                        },
                      ),
                      Expanded(child: SizedBox(), flex: 1),
                      Text("En Route", style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(63, 61, 86, 1.0)
                      )),
                      Expanded(child: SizedBox(), flex: 1),
                      GestureDetector(
                        child: Image.asset("assets/ic_notification.png"),
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
              margin: EdgeInsets.only(top: 115, left: 24, right: 24),
              width: double.maxFinite,
              height: 155,
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
                              fontWeight: FontWeight.w700
                          )),
                          SizedBox(height: 8),
                          Text("Kuala Lumpur", style: TextStyle(
                              color: Color.fromRGBO(63, 61, 86, 1.0),
                              fontSize: 14,
                              fontWeight: FontWeight.w700
                          )),
                          SizedBox(height: 24),
                          Text("To", style: TextStyle(
                              color: Color.fromRGBO(135, 141, 156, 1.0),
                              fontSize: 12,
                              fontWeight: FontWeight.w700
                          )),
                          SizedBox(height: 8),
                          Text("Penang", style: TextStyle(
                              color: Color.fromRGBO(63, 61, 86, 1.0),
                              fontSize: 14,
                              fontWeight: FontWeight.w700
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
                                     fontWeight: FontWeight.w500
                                 ))
                           ],
                         ),


                          SizedBox(height: 8),

                          Row(
                            children: [
                              SizedBox(width: 16),
                              Text("2 Hour 20 Min", style: TextStyle(
                                  color: Color.fromRGBO(255, 205, 56, 1.0),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700
                              )),
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
                        ),

                        Expanded(child: SizedBox(),flex: 1),

                        Container(
                          width: 55,
                          height: 55,
                          child: Image.asset("assets/ic_current_location.png", height: 16, width: 16),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(16))
                          ),
                        ),

                        SizedBox(width: 24),
                      ],
                    ),

                    SizedBox(height: 45),

                    Container(
                      padding: EdgeInsets.all(24),
                      width: double.maxFinite,
                      height: 115,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 205, 56, 1.0),
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(25),
                              topRight: Radius.circular(25))
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            SizedBox(width: 24),

                            Expanded(child: Column(
                              children: [
                                Text("12:32", style: TextStyle(
                                    color: Color.fromRGBO(50, 50, 51, 1.0),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                )),

                                SizedBox(height: 6),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text("2 Hours", style: TextStyle(
                                        color: Color.fromRGBO(50, 50, 51, 1.0),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20
                                    )),

                                    SizedBox(width: 16),

                                    Image.asset("assets/ic_black_circle.png"),

                                    SizedBox(width: 16),

                                    Text("120.6 km", style: TextStyle(
                                        color: Color.fromRGBO(50, 50, 51, 1.0),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20
                                    ))
                                  ],
                                )
                              ],
                            ), flex: 1),

                            GestureDetector(
                              child: Container(
                                width: 55,
                                height: 55,
                                child: Image.asset("assets/ic_black_uparrow.png", height: 16, width: 16),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(16))
                                ),
                              ),
                              onTap: (){
                                Get.to(() => PitStopView());
                              },
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )),

            GetBuilder<EnRouteController>(
              id: "confirm",
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
                      height: 350,
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
                              Text("Are you ready to begin trip?", style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromRGBO(63, 61, 86, 1.0)
                              )),

                              Padding(padding: EdgeInsets.only(top: 24,left: 24, right: 24, bottom: 16), child: GestureDetector(
                                child: ColoredButton(height: 45, width: double.maxFinite, title: "Confirm",
                                    color: Color.fromRGBO(255, 205, 56, 1.0)),
                                onTap: (){
                                    value.setConfirm(!value.isConfirmShowed);
                                },
                              )),

                              GestureDetector(
                                child: Text("Back", style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromRGBO(135, 141, 156, 1.0),
                                    fontWeight: FontWeight.w500
                                )),
                                onTap: (){
                                  Get.back();
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ), visible: value.isConfirmShowed))
          ],
        ),
      ),
    );
  }
}
