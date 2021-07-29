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
                  child: Container(
                    width: 55,
                    height: 55,
                    color: Colors.transparent,
                    child: Image.asset(
                        "assets/ic_back_yellow.png", width: 24,
                        height: 24),
                  ),
                  onTap: (){
                    Get.back();
                  },
                ), top: 45, left: 1),

            Container(
              margin: EdgeInsets.only(top: 59),
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Edit Profile", style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(63, 61, 86, 1.0),
                      fontFamily: "PoppinsBold"
                  ), textAlign: TextAlign.center,)
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 157),
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
                            GetBuilder<EditProfileController>(
                              id: "fullname_color",
                              init: EditProfileController(),
                              builder: (value) => Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(8))
                              ),
                              child: Container(
                                width: double.maxFinite,
                                padding: EdgeInsets.all(16),
                                child: TextField(
                                  controller: _editProfileController.textEditingController,
                                  onChanged: (text){
                                    if(text.isNotEmpty){
                                      value.setFullnameBorder(Color.fromRGBO(255, 205, 56, 1.0));
                                    }
                                    else{
                                      value.setFullnameBorder(Colors.white);
                                    }
                                  },
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
                                    color: Colors.white,
                                    border: Border.all(
                                      width: 1,
                                      color: value.fullnameBorderColor
                                    )
                                ),
                              ),
                            )),

                            SizedBox(height: 16),

                            //Phone Number
                            GetBuilder<EditProfileController>(
                                id: "phone_color",
                                init: EditProfileController(),
                                builder: (value) => Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(8))
                                  ),
                                  child: Container(
                                    width: double.maxFinite,
                                    padding: EdgeInsets.all(16),
                                    child: TextField(
                                      controller: _editProfileController.phoneEditingController,
                                      onChanged: (text){
                                        if(text.isNotEmpty){
                                          value.setPhoneBorder(Color.fromRGBO(255, 205, 56, 1.0));
                                        }
                                        else{
                                          value.setPhoneBorder(Colors.white);
                                        }
                                      },
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
                                        color: Colors.white,
                                        border: Border.all(
                                            width: 1,
                                            color: value.phoneBorderColor
                                        )
                                    ),
                                  ),
                                )),

                            SizedBox(height: 16),

                            //IC No
                            GetBuilder<EditProfileController>(
                                id: "code_color",
                                init: EditProfileController(),
                                builder: (value) => Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(8))
                                  ),
                                  child: Container(
                                    width: double.maxFinite,
                                    padding: EdgeInsets.all(16),
                                    child: TextField(
                                      controller: _editProfileController.codeEditingController,
                                      onChanged: (text){
                                        if(text.isNotEmpty){
                                          value.setCodeBorder(Color.fromRGBO(255, 205, 56, 1.0));
                                        }
                                        else{
                                          value.setCodeBorder(Colors.white);
                                        }
                                      },
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
                                        color: Colors.white,
                                        border: Border.all(
                                            width: 1,
                                            color: value.codeBorderColor
                                        )
                                    ),
                                  ),
                                )),

                            SizedBox(height: 16),

                            // License No
                            GetBuilder<EditProfileController>(
                                id: "licence_color",
                                init: EditProfileController(),
                                builder: (value) => Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(8))
                                  ),
                                  child: Container(
                                    width: double.maxFinite,
                                    padding: EdgeInsets.all(16),
                                    child: TextField(
                                      controller: _editProfileController.licenceEditingController,
                                      onChanged: (text){
                                        if(text.isNotEmpty){
                                          value.setLicenceBorder(Color.fromRGBO(255, 205, 56, 1.0));
                                        }
                                        else{
                                          value.setLicenceBorder(Colors.white);
                                        }
                                      },
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
                                        color: Colors.white,
                                        border: Border.all(
                                            width: 1,
                                            color: value.licenceBorderColor
                                        )
                                    ),
                                  ),
                                )),

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
                            GetBuilder<EditProfileController>(
                                id: "bus_color",
                                init: EditProfileController(),
                                builder: (value) => Card(
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
                                            onChanged: (text){
                                              if(text.isNotEmpty){
                                                value.setBusNoBorder(Color.fromRGBO(255, 205, 56, 1.0));
                                              }
                                              else{
                                                value.setBusNoBorder(Colors.white);
                                              }
                                            },
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
                                        color: Colors.white,
                                        border: Border.all(
                                            width: 1,
                                            color: value.busNoBorderColor
                                        )
                                    ),
                                  ),
                                )),

                            SizedBox(height: 16),

                            //Password
                            GetBuilder<EditProfileController>(
                                id: "password_color",
                                init: EditProfileController(),
                                builder: (value) =>       Card(
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
                                            onChanged: (text){
                                              if(text.isNotEmpty){
                                                value.setPasswordNoBorder(Color.fromRGBO(255, 205, 56, 1.0));
                                              }
                                              else{
                                                value.setPasswordNoBorder(Colors.white);
                                              }
                                            },
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
                                        color: Colors.white,
                                        border: Border.all(
                                            width: 1,
                                            color: value.passwordBorderColor
                                        )
                                    ),
                                  ),
                                )
                            ),

                            SizedBox(height: 16),

                            //Confirm Password
                            GetBuilder<EditProfileController>(
                                id: "confirm_color",
                                init: EditProfileController(),
                                builder: (value) => Card(
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
                                            onChanged: (text){
                                              if(text.isNotEmpty){
                                                value.setConfirmPasswordNoBorder(Color.fromRGBO(255, 205, 56, 1.0));
                                              }
                                              else{
                                                value.setConfirmPasswordNoBorder(Colors.white);
                                              }
                                            },
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
                                        color: Colors.white,
                                        border: Border.all(
                                            width: 1,
                                            color: value.confirmPasswordBorderColor
                                        )
                                    ),
                                  ),
                                )),

                            Padding(padding: EdgeInsets.only(top: 36), child: GestureDetector(
                              child: ColoredButton(height: 55, width: double.maxFinite, title: "Update Profile",
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
              margin: EdgeInsets.only(top: 115),
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
