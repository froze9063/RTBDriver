import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rtb_driver/app/modules/menus/views/menus_view.dart';
import 'package:rtb_driver/app/modules/notification/views/notification_view.dart';
import 'package:rtb_driver/app/widgets/colored_button.dart';

import '../controllers/trip_details_controller.dart';

class TripDetailsView extends GetView<TripDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/home_background.png", width: double.maxFinite,
              height: double.maxFinite, fit: BoxFit.fill),

          Container(
            padding: EdgeInsets.only(left: 24, right: 24, bottom: 24, top: 45),
            height: double.maxFinite,
            width: double.maxFinite,
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      child: Image.asset("assets/ic_menus.png"),
                      onTap: (){
                        Get.to(() => MenusView());
                      },
                    ),
                    Expanded(child: SizedBox(), flex: 1),
                    Text("Trip Details", style: TextStyle(
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

                Expanded(child: Stack(
                  children: [
                    Container(
                      width: double.maxFinite,
                      height: double.maxFinite,
                      margin: EdgeInsets.only(top: 24, bottom: 16),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(25))
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.only(left: 24,right: 24,top: 10,bottom: 10),
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(225, 225, 232, 1.0),
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25))
                            ),
                            child: Stack(
                              children: [
                                Image.asset("assets/img_ridethebee.png",height: 30,width: 30, fit: BoxFit.cover),
                                Padding(padding: EdgeInsets.only(top: 6), child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset("assets/ic_minibus.png", width: 16, height: 16, fit: BoxFit.cover),
                                    SizedBox(width: 8),
                                    Text("SAB 4124",
                                        style: TextStyle(
                                            color: Color.fromRGBO(35, 35, 35, 1.0),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700
                                        ))
                                  ],
                                ))
                              ],
                            ),
                          ),

                          Row(
                            children: [
                              SizedBox(width: 24),
                              Expanded(child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 24),

                                  Text("Depart", style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(135, 141, 156, 1.0)
                                  )),

                                  SizedBox(height: 8),

                                  Text("1:05 PM", style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromRGBO(63, 61, 86, 1.0)
                                  )),

                                  SizedBox(height: 8),

                                  Text("12 June, Mon", style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(135, 141, 156, 1.0)
                                  ))
                                ],
                              ), flex: 1),

                              Expanded(child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SizedBox(height: 24),

                                  Text("Arrive", style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(135, 141, 156, 1.0)
                                  )),

                                  SizedBox(height: 8),

                                  Text("1:05 PM", style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromRGBO(63, 61, 86, 1.0)
                                  )),

                                  SizedBox(height: 8),

                                  Text("12 June, Mon", style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(135, 141, 156, 1.0)
                                  ))
                                ],
                              ), flex: 1),

                              SizedBox(width: 24),
                            ],
                          ),

                          Container(
                            margin: EdgeInsets.only(top: 24, left: 24, right: 24),
                            width: double.maxFinite,
                            height: 1,
                            color: Color.fromRGBO(240, 240, 239, 1.0),
                          ),

                          Padding(
                            padding: EdgeInsets.all(16),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Image.asset("assets/ic_yellow_circle.png", width: 16, height: 16),
                                    SizedBox(height: 8),
                                    Image.asset("assets/ic_dots.png", width: 8, height: 55),
                                    SizedBox(height: 8),
                                    Image.asset("assets/ic_black_circle.png", width: 16, height: 16),
                                  ],
                                ),

                                SizedBox(width: 16),

                                Expanded(child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Kuala Lumpur", style: TextStyle(
                                        color: Color.fromRGBO(135, 141, 156, 1.0),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700
                                    )),
                                    SizedBox(height: 8),
                                    Text("TBS (Terminal Bersepadu Selatan)", style: TextStyle(
                                        color: Color.fromRGBO(63, 61, 86, 1.0),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700
                                    )),
                                    SizedBox(height: 24),
                                    Container(
                                      width: double.maxFinite,
                                      height: 1,
                                      color: Color.fromRGBO(236, 239, 241, 1.0),
                                    ),
                                    SizedBox(height: 24),
                                    Text("Penang", style: TextStyle(
                                        color: Color.fromRGBO(135, 141, 156, 1.0),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700
                                    )),
                                    SizedBox(height: 8),
                                    Text("Sungai Nibong Bus Terminal", style: TextStyle(
                                        color: Color.fromRGBO(63, 61, 86, 1.0),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700
                                    )),
                                  ],
                                ), flex: 1),

                                SizedBox(width: 16),
                              ],
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(left: 24, right: 24,bottom: 16),
                            width: double.maxFinite,
                            height: 1,
                            color: Color.fromRGBO(236, 239, 241, 1.0),
                          ),

                          Row(
                            children: [
                              SizedBox(width: 24),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Pick-up point", style: TextStyle(
                                      color: Color.fromRGBO(135, 141, 156, 1.0),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500
                                  )),
                                  SizedBox(height: 8),
                                  Text("Bay 5", style: TextStyle(
                                      color: Color.fromRGBO(63, 61, 86, 1.0),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700
                                  ))
                                ],
                              )
                            ],
                          ),

                          SizedBox(height: 16),

                          Row(
                            children: [
                              SizedBox(width: 24),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Drop-off point", style: TextStyle(
                                      color: Color.fromRGBO(135, 141, 156, 1.0),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500
                                  )),
                                  SizedBox(height: 8),
                                  Text("Bay 1", style: TextStyle(
                                      color: Color.fromRGBO(63, 61, 86, 1.0),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700
                                  ))
                                ],
                              )
                            ],
                          ),

                          Expanded(child: SizedBox(), flex: 1),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Text("Total Passengers", style: TextStyle(
                                      color: Color.fromRGBO(135, 141, 156, 1.0),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal
                                  )),

                                  SizedBox(height: 8),

                                  Text("39/40", style: TextStyle(
                                      color: Color.fromRGBO(63, 61, 86, 1.0),
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold
                                  ))
                                ],
                              )
                            ],
                          ),

                          SizedBox(height: 24)

                        ],
                      ),
                    ),

                    Container(
                      width: double.maxFinite,
                      height: double.maxFinite,
                      child: Column(
                        children: [
                          Expanded(child: SizedBox(),flex: 1),
                          Row(
                            children: [
                              Container(
                                width: 16,
                                height: 45,
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(255, 201, 41, 1.0),
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(45),
                                        bottomRight: Radius.circular(45))
                                ),
                              ),

                              Expanded(child: Column(
                                children: [
                                  Container(
                                    width: double.maxFinite,
                                    height: 1,
                                    color: Color.fromRGBO(236, 239, 241, 1.0),
                                  ),

                                  SizedBox(height: 16),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text("View Seating", style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromRGBO(255, 205, 56, 1.0)
                                      )),
                                      SizedBox(width: 16),
                                      Image.asset("assets/ic_yellow_right.png"),
                                      SizedBox(width: 16)
                                    ],
                                  ),

                                  SizedBox(height: 16),

                                  Container(
                                    width: double.maxFinite,
                                    height: 1,
                                    color: Color.fromRGBO(236, 239, 241, 1.0),
                                  ),
                                ],
                              ), flex: 1),

                              Container(
                                width: 16,
                                height: 45,
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(255, 201, 41, 1.0),
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(45),
                                        bottomLeft: Radius.circular(45))
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 115)
                        ],
                      ),
                    )
                  ],
                ), flex: 1),

                Padding(padding: EdgeInsets.only(bottom: 24), child: GestureDetector(
                  child: ColoredButton(height: 45, width: double.maxFinite, title: "Begin Trip",
                      color: Color.fromRGBO(63, 61, 86, 1.0)),
                  onTap: (){

                  },
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
