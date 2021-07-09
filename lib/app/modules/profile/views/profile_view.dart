import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rtb_driver/app/modules/edit_profile/views/edit_profile_view.dart';
import 'package:rtb_driver/app/widgets/colored_button.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(250, 250, 250, 1.0),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                child: GestureDetector(
                  child: Image.asset(
                      "assets/ic_back_yellow.png", width: 24,
                      height: 24),
                  onTap: (){
                    Get.back();
                  },
                ), top: 45, left: 24),

            Container(
              margin: EdgeInsets.only(top: 45),
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("My Profile", style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(63, 61, 86, 1.0),
                      fontWeight: FontWeight.bold
                  ), textAlign: TextAlign.center,)
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 135),
              width: double.maxFinite,
              height: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16))
                    ),
                    elevation: 2,
                    color: Colors.white,
                    child: Container(
                      width: double.maxFinite,
                      height: double.maxFinite,
                      padding: EdgeInsets.all(24),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 45),

                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Email",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color.fromRGBO(135, 141, 156, 1.0),
                                        fontWeight: FontWeight.normal
                                    )),

                                SizedBox(height: 16),

                                Text("johntravisscott@ridethebee.com", style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(63, 61, 86, 1.0),
                                    fontWeight: FontWeight.w700
                                )),

                                SizedBox(height: 16),

                                Container(
                                  width: double.maxFinite,
                                  height: 1,
                                  color: Color.fromRGBO(240, 240, 239, 1.0),
                                )
                              ],
                            ),

                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 16),

                                Text("Full Name Per IC",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color.fromRGBO(135, 141, 156, 1.0),
                                        fontWeight: FontWeight.normal
                                    )),

                                SizedBox(height: 16),

                                Text("John Travis Scott Travolta", style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(63, 61, 86, 1.0),
                                    fontWeight: FontWeight.w700
                                )),

                                SizedBox(height: 16),

                                Container(
                                  width: double.maxFinite,
                                  height: 1,
                                  color: Color.fromRGBO(240, 240, 239, 1.0),
                                )
                              ],
                            ),

                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 16),

                                Text("Mobile No.",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color.fromRGBO(135, 141, 156, 1.0),
                                        fontWeight: FontWeight.normal
                                    )),

                                SizedBox(height: 16),

                                Text("+65 4589 0321", style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(63, 61, 86, 1.0),
                                    fontWeight: FontWeight.w700
                                )),

                                SizedBox(height: 16),

                                Container(
                                  width: double.maxFinite,
                                  height: 1,
                                  color: Color.fromRGBO(240, 240, 239, 1.0),
                                )
                              ],
                            ),

                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 16),

                                Text("IC No.",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color.fromRGBO(135, 141, 156, 1.0),
                                        fontWeight: FontWeight.normal
                                    )),

                                SizedBox(height: 16),

                                Text("S2459077A", style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(63, 61, 86, 1.0),
                                    fontWeight: FontWeight.w700
                                )),

                                SizedBox(height: 16),

                                Container(
                                  width: double.maxFinite,
                                  height: 1,
                                  color: Color.fromRGBO(240, 240, 239, 1.0),
                                )
                              ],
                            ),

                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 16),

                                Text("License No.",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color.fromRGBO(135, 141, 156, 1.0),
                                        fontWeight: FontWeight.normal
                                    )),

                                SizedBox(height: 16),

                                Text("S1234567A", style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(63, 61, 86, 1.0),
                                    fontWeight: FontWeight.w700
                                )),

                                SizedBox(height: 16),

                                Container(
                                  width: double.maxFinite,
                                  height: 1,
                                  color: Color.fromRGBO(240, 240, 239, 1.0),
                                )
                              ],
                            ),

                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 16),

                                Text("Company",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color.fromRGBO(135, 141, 156, 1.0),
                                        fontWeight: FontWeight.normal
                                    )),

                                SizedBox(height: 16),

                                Text("Ride The Bee", style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(63, 61, 86, 1.0),
                                    fontWeight: FontWeight.w700
                                )),

                                SizedBox(height: 16),

                                Container(
                                  width: double.maxFinite,
                                  height: 1,
                                  color: Color.fromRGBO(240, 240, 239, 1.0),
                                )
                              ],
                            ),

                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 16),

                                Text("Bus No.",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color.fromRGBO(135, 141, 156, 1.0),
                                        fontWeight: FontWeight.normal
                                    )),

                                SizedBox(height: 16),

                                Text("SBA 4124", style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(63, 61, 86, 1.0),
                                    fontWeight: FontWeight.w700
                                )),

                                SizedBox(height: 16),
                              ],
                            ),

                            Padding(padding: EdgeInsets.only(top: 36), child: GestureDetector(
                              child: ColoredButton(height: 45, width: double.maxFinite, title: "Edit Profile",
                                  color: Color.fromRGBO(255, 205, 56, 1.0)),
                              onTap: (){
                                  Get.to(() => EditProfileView());
                              },
                            )),
                          ],
                        ),
                      ),
                    ),
                  ), flex: 1),

                  Container(
                    width: double.maxFinite,
                    height: 75,
                    color: Color.fromRGBO(250, 250, 250, 1.0),
                    child: Center(
                      child: Text("Log Out", style: TextStyle(
                          fontSize: 16,
                          color: Color.fromRGBO(255, 205, 56, 1.0),
                          fontWeight: FontWeight.bold
                      )),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 100),
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/img_example_profile.png", height: 100, width: 100),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
