import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/reviews_controller.dart';

class ReviewsView extends GetView<ReviewsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/home_background.png",
              width: double.maxFinite,
              height: double.maxFinite, fit: BoxFit.fill),

          Padding(
              padding: EdgeInsets.only(left: 24, right: 10, top: 40),
              child: Row(children: [
                Expanded(child: Text("Reviews", style: TextStyle(
                  fontSize: 20,
                  fontFamily: ("PoppinsMedium"),
                  color: Color.fromRGBO(63, 61, 86, 1.0),

                )), flex: 1),
                GestureDetector(
                  child: Container(
                    width: 55,
                    height: 55,
                    color: Colors.transparent,
                    child: Center(
                      child: Image.asset("assets/ic_close_black.png", width: 24, height: 24),
                    ),
                  ),
                  onTap: (){
                    Get.back();
                  },
                )
              ]),
          ),

          Container(
            margin: EdgeInsets.only(top: 115),
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25))
            ),
            child: Column(
              children: [
                Expanded(child: ListView.builder(itemBuilder: (context, index){
                  return Container(
                    margin: EdgeInsets.only(top: index == 0 ? 24 : 16),
                    width: double.maxFinite,
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 24, right: 24),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Expanded(child: Text("Elizabeth Tan",
                                    style: TextStyle(
                                      fontSize: 16,
                                        fontFamily: ("PoppinsBold"),
                                      color: Color.fromRGBO(255, 205 ,56, 1.0)
                                    ),
                                  )),

                                  Row(
                                    children: [
                                      SizedBox(width: 8),
                                      Image.asset("assets/ic_star.png", height: 24, width: 24),

                                      Text("4.8", style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: ("PoppinsMedium"),
                                          color: Color.fromRGBO(63, 61, 86, 1.0)
                                      ))
                                    ],
                                  )
                                ],
                              ),

                              SizedBox(height: 2),

                              Text("16-07-2021", style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: ("PoppinsRegular"),
                                  color: Color.fromRGBO(135, 141, 156, 1.0)
                              )),

                              SizedBox(height: 8),

                              Row(
                                children: [
                                  Expanded(child: Text(
                                      "Thank you for the smooth journey! Will def use ride the bee again on my next trip.",
                                      style: TextStyle(
                                      height: 1.5,
                                      fontSize: 16,
                                      fontFamily: ("PoppinsRegular"),
                                      color: Color.fromRGBO(63, 61, 86, 1.0)
                                  )), flex: 1),
                                  SizedBox(width: 24),
                                  Visibility(child: SizedBox(),visible: false),
                                  SizedBox(width: 24)
                                ],
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 16),

                        Container(
                          width: double.maxFinite,
                          height: 10,
                          color: Color.fromRGBO(250, 250, 250, 1.0),
                        )
                      ],
                    ),
                  );
                },
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  itemCount: 5,
                  primary: false,
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
