import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rtb_driver/app/modules/home/views/home_view.dart';
import 'package:rtb_driver/app/modules/messages/views/messages_view.dart';
import 'package:rtb_driver/app/modules/profile/views/profile_view.dart';
import 'package:rtb_driver/app/modules/reviews/views/reviews_view.dart';
import 'package:rtb_driver/app/modules/trips/views/trips_view.dart';

import '../controllers/menus_controller.dart';

class MenusView extends GetView<MenusController> {

  MenusController menuController = Get.put(MenusController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.maxFinite,
            height: 411,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25))
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25)),
              child: Image.asset("assets/img_menu_background.png",
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
                  Padding(padding: EdgeInsets.only(top: 40), child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Menu", style: TextStyle(
                          fontSize: 24,
                          color: Color.fromRGBO(63, 61, 86, 1.0),
                          fontFamily: "PoppinsMedium"
                      )),

                      Expanded(child: SizedBox(), flex: 1),

                      GestureDetector(child: Container(
                        width: 55,
                        height: 55,
                        color: Colors.transparent,
                        child: Center(
                          child: Image.asset("assets/ic_close_black.png"),
                        ),
                      ),onTap: (){
                        Get.back();
                      })
                    ],
                  )),

                  SizedBox(height: 36),

                  Image.asset("assets/img_driver_home.png", height: 75, width: 75),

                  SizedBox(height: 16),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(child: Text("John Travis Scott Travolta", style: TextStyle(
                          fontSize: 18,
                          fontFamily: "PoppinsBold",
                          color: Color.fromRGBO(63, 61, 86, 1.0)
                      )), flex: 1),

                      GestureDetector(
                        child: Container(
                          width: 55,
                          height: 55,
                          color: Colors.transparent,
                          child: Center(
                            child: Image.asset("assets/ic_circle_right.png", height: 24, width: 24),
                          ),
                        ),
                        onTap: (){
                          Get.to(() => ProfileView());
                        },
                      )
                    ],
                  ),

                  Container(
                    width: 180,
                    child: Row(
                      children: [
                        SizedBox(width: 8),
                        Image.asset("assets/ic_star.png", height: 24, width: 24),

                        Text("4.8 Driver Rating", style: TextStyle(
                            fontSize: 15,
                            fontFamily: "PoppinsMedium",
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
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12))
                    ),
                    child: Container(
                      margin: EdgeInsets.all(5),
                      child: Column(
                        children: [
                          Column(
                            children: [
                              GetBuilder<MenusController>(
                               id: "home_color",
                               init: MenusController(),
                               builder: (value) => GestureDetector(
                                child: Container(
                                  width: double.maxFinite,
                                  color: value.homeColor,
                                  padding: EdgeInsets.only(top: 24, bottom: 24, left: 16, right: 16),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Image.asset("assets/ic_yellow_home.png", height: 24, width: 24),
                                      SizedBox(width: 16),
                                      Expanded(child: Text("Home", style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: "PoppinsMedium",
                                          color: Color.fromRGBO(63, 61, 86, 1.0)
                                      )), flex: 1),
                                      Image.asset("assets/ic_graycircle_arrow.png", height: 24, width: 24)
                                    ],
                                  ),
                                ),
                                 onTap: (){
                                   Get.to(() => HomeView());
                                   value.setHomeColor(Colors.white);
                                 },
                                 onTapCancel: (){
                                   value.setHomeColor(Colors.white);
                                 },
                                 onTapUp: (text){
                                   value.setHomeColor(Color.fromRGBO(235, 235, 235, 1.0).withOpacity(0.5));
                                 },
                                 onTapDown: (text){
                                   value.setHomeColor(Color.fromRGBO(235, 235, 235, 1.0).withOpacity(0.5));
                                 },
                              )
                              )
                            ],
                          ),

                          Container(
                            width: double.maxFinite,
                            height: 1,
                            color: Color.fromRGBO(240, 240, 239, 1.0),
                          ),

                          GetBuilder<MenusController>(
                              id: "alltrips_color",
                              init: MenusController(),
                              builder: (value) => GestureDetector(
                                child: Container(
                                  width: double.maxFinite,
                                  color: value.alltripsColor,
                                  padding: EdgeInsets.only(top: 24, bottom: 24, left: 16, right: 16),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Image.asset("assets/ic_yellow_trips.png", height: 24, width: 24),
                                          SizedBox(width: 16),
                                          Expanded(child: Text("All Trips", style: TextStyle(
                                              fontSize: 15,
                                              fontFamily: "PoppinsMedium",
                                              color: Color.fromRGBO(63, 61, 86, 1.0)
                                          )), flex: 1),
                                          Image.asset("assets/ic_graycircle_arrow.png", height: 24, width: 24)
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                onTap: (){
                                  Get.to(() => TripsView());
                                  value.setAllTripsColor(Colors.white);
                                },
                                onTapCancel: (){
                                  value.setAllTripsColor(Colors.white);
                                },
                                onTapUp: (text){
                                  value.setAllTripsColor(Color.fromRGBO(235, 235, 235, 1.0).withOpacity(0.5));
                                },
                                onTapDown: (text){
                                  value.setAllTripsColor(Color.fromRGBO(235, 235, 235, 1.0).withOpacity(0.5));
                                },
                              )),

                          Container(
                            width: double.maxFinite,
                            height: 1,
                            color: Color.fromRGBO(240, 240, 239, 1.0),
                          ),

                          GetBuilder<MenusController>(
                              id: "message_color",
                              init: MenusController(),
                              builder: (value) => GestureDetector(
                                child: Container(
                                  width: double.maxFinite,
                                  color: value.messageColor,
                                  padding: EdgeInsets.only(top: 24, bottom: 24, left: 16, right: 16),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Image.asset("assets/ic_yellow_chat.png", height: 24, width: 24),
                                          SizedBox(width: 16),
                                          Expanded(child: Text("Messages", style: TextStyle(
                                              fontSize: 15,
                                              fontFamily: "PoppinsMedium",
                                              color: Color.fromRGBO(63, 61, 86, 1.0)
                                          )), flex: 1),
                                          Image.asset("assets/ic_graycircle_arrow.png", height: 24, width: 24)
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                onTap: (){
                                  Get.to(() => MessagesView());
                                  value.setMessageColor(Colors.white);
                                },
                                onTapCancel: (){
                                  value.setMessageColor(Colors.white);
                                },
                                onTapUp: (text){
                                  value.setMessageColor(Color.fromRGBO(235, 235, 235, 1.0).withOpacity(0.5));
                                },
                                onTapDown: (text){
                                  value.setMessageColor(Color.fromRGBO(235, 235, 235, 1.0).withOpacity(0.5));
                                },
                              )),

                          Container(
                            width: double.maxFinite,
                            height: 1,
                            color: Color.fromRGBO(240, 240, 239, 1.0),
                          ),

                          GetBuilder<MenusController>(
                              id: "review_color",
                              init: MenusController(),
                              builder: (value) => GestureDetector(
                                child: Container(
                                  width: double.maxFinite,
                                  color: value.reviewsColor,
                                  padding: EdgeInsets.only(top: 24, bottom: 24, left: 16, right: 16),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Image.asset("assets/ic_yellow_reviews.png", height: 24, width: 24),
                                          SizedBox(width: 16),
                                          Expanded(child: Text("Reviews", style: TextStyle(
                                              fontSize: 15,
                                              fontFamily: "PoppinsMedium",
                                              color: Color.fromRGBO(63, 61, 86, 1.0)
                                          )), flex: 1),
                                          Image.asset("assets/ic_graycircle_arrow.png", height: 24, width: 24)
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                onTap: (){
                                  Get.to(() => ReviewsView());
                                  value.setReviewsColor(Colors.white);
                                },
                                onTapCancel: (){
                                  value.setReviewsColor(Colors.white);
                                },
                                onTapUp: (text){
                                  value.setReviewsColor(Color.fromRGBO(235, 235, 235, 1.0).withOpacity(0.5));
                                },
                                onTapDown: (text){
                                  value.setReviewsColor(Color.fromRGBO(235, 235, 235, 1.0).withOpacity(0.5));
                                },
                              ))
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
