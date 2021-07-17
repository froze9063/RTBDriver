import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rtb_driver/app/modules/edit_profile/controllers/edit_profile_controller.dart';
import 'package:rtb_driver/app/modules/login/views/login_view.dart';
import 'package:rtb_driver/app/widgets/colored_button.dart';

class EditProfileView extends GetView<EditProfileController> {

  EditProfileController _editProfileController = Get.put(EditProfileController());

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
                  Text("Edit Profile", style: TextStyle(
                     fontSize: 16,
                     color: Color.fromRGBO(63, 61, 86, 1.0),
                     fontFamily: "PoppinsBold",
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
                      margin: EdgeInsets.only(top: 75),
                      width: double.maxFinite,
                      height: double.maxFinite,
                      padding: EdgeInsets.all(24),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(8))
                              ),
                              child: Container(
                                width: double.maxFinite,
                                padding: EdgeInsets.all(16),
                                child: Text("johntravisscott@ridethebee.com", style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromRGBO(63, 61, 86, 1.0),
                                    fontFamily: "PoppinsMedium"
                                )),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(8)),
                                    color: Color.fromRGBO(195, 194, 204, 0.5)
                                ),
                              ),
                            ),

                            SizedBox(height: 16),

                            //Fullname
                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(8))
                              ),
                              child: Container(
                                width: double.maxFinite,
                                padding: EdgeInsets.all(16),
                                child: TextField(
                                  controller: _editProfileController.textEditingController,
                                  style: TextStyle(
                                      color: Color.fromRGBO(63, 61, 86, 1.0),
                                      fontSize: 15,
                                      fontFamily: "PoppinsMedium"
                                  ),
                                  decoration: new InputDecoration.collapsed(
                                      hintText: "Fullname"
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(8)),
                                    color: Colors.white
                                ),
                              ),
                            ),

                            SizedBox(height: 16),

                            //Phone Number
                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(8))
                              ),
                              child: Container(
                                width: double.maxFinite,
                                padding: EdgeInsets.all(16),
                                child: TextField(
                                  controller: _editProfileController.phoneEditingController,
                                  style: TextStyle(
                                      color: Color.fromRGBO(63, 61, 86, 1.0),
                                      fontSize: 15,
                                      fontFamily: "PoppinsMedium"
                                  ),
                                  decoration: new InputDecoration.collapsed(
                                      hintText: "Phone Number"
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(8)),
                                    color: Colors.white
                                ),
                              ),
                            ),

                            SizedBox(height: 16),

                            //IC No
                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(8))
                              ),
                              child: Container(
                                width: double.maxFinite,
                                padding: EdgeInsets.all(16),
                                child: TextField(
                                  controller: _editProfileController.codeEditingController,
                                  style: TextStyle(
                                      color: Color.fromRGBO(63, 61, 86, 1.0),
                                      fontSize: 15,
                                      fontFamily: "PoppinsMedium"
                                  ),
                                  decoration: new InputDecoration.collapsed(
                                      hintText: "IC No"
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(8)),
                                    color: Colors.white
                                ),
                              ),
                            ),

                            SizedBox(height: 16),

                            // License No
                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(8))
                              ),
                              child: Container(
                                width: double.maxFinite,
                                padding: EdgeInsets.all(16),
                                child: TextField(
                                  controller: _editProfileController.licenceEditingController,
                                  style: TextStyle(
                                      color: Color.fromRGBO(63, 61, 86, 1.0),
                                      fontSize: 15,
                                      fontFamily: "PoppinsMedium"
                                  ),
                                  decoration: new InputDecoration.collapsed(
                                      hintText: "License No"
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(8)),
                                    color: Colors.white
                                ),
                              ),
                            ),

                            SizedBox(height: 16),

                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(8))
                              ),
                              child: Container(
                                width: double.maxFinite,
                                padding: EdgeInsets.all(16),
                                child: Row(
                                  children: [
                                    Expanded(child: Text("Ride The Bee", style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromRGBO(63, 61, 86, 1.0),
                                        fontFamily: "PoppinsMedium"
                                    )), flex: 1),

                                    Image.asset("assets/ic_yellow_dropdown.png", width: 16, height: 16, fit: BoxFit.contain)
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(8)),
                                    color: Colors.white
                                ),
                              ),
                            ),

                            SizedBox(height: 16),

                            // Bus No
                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(8))
                              ),
                              child: Container(
                                width: double.maxFinite,
                                padding: EdgeInsets.all(16),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: TextField(
                                        controller: _editProfileController.busNoEditingController,
                                        style: TextStyle(
                                            color: Color.fromRGBO(63, 61, 86, 1.0),
                                            fontSize: 15,
                                            fontFamily: "PoppinsMedium"
                                        ),
                                        decoration: new InputDecoration.collapsed(
                                            hintText: "Bus No"
                                        ),
                                      ),
                                      flex: 1,
                                    ),

                                    Image.asset("assets/ic_search_yellow.png", width: 16, height: 16)
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(8)),
                                    color: Colors.white
                                ),
                              ),
                            ),

                            SizedBox(height: 16),

                            //Password
                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(8))
                              ),
                              child: Container(
                                width: double.maxFinite,
                                padding: EdgeInsets.all(16),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: TextField(
                                        controller: _editProfileController.passwordEditingController,
                                        style: TextStyle(
                                            color: Color.fromRGBO(63, 61, 86, 1.0),
                                            fontSize: 15,
                                            fontFamily: "PoppinsMedium"
                                        ),
                                        obscureText: true,
                                        decoration: new InputDecoration.collapsed(
                                            hintText: "Password"
                                        ),
                                      ),
                                      flex: 1,
                                    ),

                                    Image.asset("assets/ic_eye_open.png", width: 16, height: 16)
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(8)),
                                    color: Colors.white
                                ),
                              ),
                            ),

                            SizedBox(height: 16),

                            //Confirm Password
                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(8))
                              ),
                              child: Container(
                                width: double.maxFinite,
                                padding: EdgeInsets.all(16),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: TextField(
                                        controller: _editProfileController.confirmPasswordEditingController,
                                        style: TextStyle(
                                            color: Color.fromRGBO(63, 61, 86, 1.0),
                                            fontSize: 15,
                                            fontFamily: "PoppinsMedium"
                                        ),
                                        obscureText: true,
                                        decoration: new InputDecoration.collapsed(
                                            hintText: "Confirm Password"
                                        ),
                                      ),
                                      flex: 1,
                                    ),

                                    Image.asset("assets/ic_eye_open.png", width: 16, height: 16)
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(8)),
                                    color: Colors.white
                                ),
                              ),
                            ),

                            Padding(padding: EdgeInsets.only(top: 36), child: GestureDetector(
                              child: ColoredButton(height: 45, width: double.maxFinite, title: "Update Profile",
                                  color: Color.fromRGBO(255, 205, 56, 1.0)),
                              onTap: (){

                              },
                            )),
                          ],
                        ),
                      ),
                    ),
                  ), flex: 1),

                  GestureDetector(
                    child: Container(
                      width: double.maxFinite,
                      height: 75,
                      color: Color.fromRGBO(250, 250, 250, 1.0),
                      child: Center(
                        child: Text("Log Out", style: TextStyle(
                          fontSize: 16,
                          color: Color.fromRGBO(255, 205, 56, 1.0),
                          fontFamily: "PoppinsBold",
                        )),
                      ),
                    ),
                    onTap: (){
                      Get.offAll(() => LoginView());
                    },
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
                  Image.asset("assets/img_home_edit.png", height: 100, width: 100, fit: BoxFit.fitHeight),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
