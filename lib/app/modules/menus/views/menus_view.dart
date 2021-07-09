import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rtb_driver/app/modules/messages/views/messages_view.dart';
import 'package:rtb_driver/app/modules/profile/views/profile_view.dart';
import 'package:rtb_driver/app/modules/reviews/views/reviews_view.dart';
import 'package:rtb_driver/app/modules/trips/views/trips_view.dart';

import '../controllers/menus_controller.dart';

class MenusView extends GetView<MenusController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.maxFinite,
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25))
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25)),
              child: Image.asset("assets/home_background.png",
                  width: double.maxFinite,
                  height: double.maxFinite, fit: BoxFit.fill),
            ),
          ),

          Padding(
              padding: EdgeInsets.only(left: 24, right: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(top: 45), child: Row(
                    children: [
                      Text("Menu", style: TextStyle(
                          fontSize: 24,
                          color: Color.fromRGBO(63, 61, 86, 1.0),
                          fontWeight: FontWeight.bold
                      )),

                      Expanded(child: SizedBox(), flex: 1),

                      GestureDetector(child: Image.asset("assets/ic_close_black.png"),onTap: (){
                        Get.back();
                      })
                    ],
                  )),

                  SizedBox(height: 16),

                  Image.asset("assets/img_example_profile.png", height: 75, width: 75),

                  SizedBox(height: 24),

                  Row(
                    children: [
                      Expanded(child: Text("JOHN TRAVIS SCOTT TRAVOLTA", style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(63, 61, 86, 1.0)
                      )), flex: 1),

                      GestureDetector(
                        child: Image.asset("assets/ic_circle_right.png", height: 24, width: 24),
                        onTap: (){
                          Get.to(() => ProfileView());
                        },
                      )
                    ],
                  ),

                  SizedBox(height: 24),

                  Container(
                    width: 165,
                    child: Row(
                      children: [
                        SizedBox(width: 8),
                        Image.asset("assets/ic_star.png", height: 24, width: 24),

                        Text("4.8 Driver Rating", style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(63, 61, 86, 1.0)
                        ))
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    padding: EdgeInsets.only(top: 6,bottom: 6),
                  ),

                  SizedBox(height: 16),

                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12))
                    ),
                    child: Container(
                      margin: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset("assets/ic_yellow_home.png", height: 24, width: 24),
                                  SizedBox(width: 8),
                                  Expanded(child: Text("Home", style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromRGBO(63, 61, 86, 1.0)
                                  )), flex: 1),
                                  Image.asset("assets/ic_graycircle_arrow.png", height: 24, width: 24)
                                ],
                              ),

                              SizedBox(height: 24),

                              Container(
                                width: double.maxFinite,
                                height: 1,
                                color: Color.fromRGBO(240, 240, 239, 1.0),
                              )
                            ],
                          ),

                          GestureDetector(
                            child: Column(
                              children: [
                                SizedBox(height: 16),
                                Row(
                                  children: [
                                    Image.asset("assets/ic_yellow_trips.png", height: 24, width: 24),
                                    SizedBox(width: 8),
                                    Expanded(child: Text("All Trips", style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: Color.fromRGBO(63, 61, 86, 1.0)
                                    )), flex: 1),
                                    Image.asset("assets/ic_graycircle_arrow.png", height: 24, width: 24)
                                  ],
                                ),

                                SizedBox(height: 16),

                                Container(
                                  width: double.maxFinite,
                                  height: 1,
                                  color: Color.fromRGBO(240, 240, 239, 1.0),
                                )
                              ],
                            ),
                            onTap: (){
                              Get.to(() => TripsView());
                            },
                          ),


                          GestureDetector(
                            child: Column(
                              children: [
                                SizedBox(height: 16),
                                Row(
                                  children: [
                                    Image.asset("assets/ic_yellow_chat.png", height: 24, width: 24),
                                    SizedBox(width: 8),
                                    Expanded(child: Text("Messages", style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: Color.fromRGBO(63, 61, 86, 1.0)
                                    )), flex: 1),
                                    Image.asset("assets/ic_graycircle_arrow.png", height: 24, width: 24)
                                  ],
                                ),

                                SizedBox(height: 16),

                                Container(
                                  width: double.maxFinite,
                                  height: 1,
                                  color: Color.fromRGBO(240, 240, 239, 1.0),
                                )
                              ],
                            ),
                            onTap: (){
                              Get.to(() => MessagesView());
                            },
                          ),

                          GestureDetector(
                            child: Column(
                              children: [
                                SizedBox(height: 16),
                                Row(
                                  children: [
                                    Image.asset("assets/ic_yellow_reviews.png", height: 24, width: 24),
                                    SizedBox(width: 8),
                                    Expanded(child: Text("Reviews", style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: Color.fromRGBO(63, 61, 86, 1.0)
                                    )), flex: 1),
                                    Image.asset("assets/ic_graycircle_arrow.png", height: 24, width: 24)
                                  ],
                                ),

                                SizedBox(height: 16),
                              ],
                            ),
                            onTap: (){
                              Get.to(() => ReviewsView());
                            },
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
          ),
        ],
      ),
    );
  }
}
