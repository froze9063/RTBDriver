import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rtb_driver/app/modules/home/views/home_view.dart';
import 'package:rtb_driver/app/widgets/colored_button.dart';
import 'package:rtb_driver/app/widgets/custom_edittext.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {

  LoginController _loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Container(
              width: double.maxFinite,
              height: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25)),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: <Color>[
                          Color.fromRGBO(255, 166, 0, 1.0),
                          Color.fromRGBO(255, 205, 56, 1.0)
                        ]
                    )
                ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/img_ride_the_bee.png", fit: BoxFit.fitHeight)
                ],
              ),
            ),

            Column(
              children: [
                SizedBox(height: 75),

                Image.asset("assets/img_splash_logo.png", height: 149,
                    width: 179),

                Container(
                  margin: EdgeInsets.only(left: 24, right: 24, top: 24),
                  width: double.maxFinite,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    elevation: 1,
                    child: Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 24,right: 24, top: 24),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Text("Sign In", style: TextStyle(
                                color: Color.fromRGBO(63, 61, 86, 1.0),
                                fontSize: 16,
                                fontWeight: FontWeight.bold))
                              ],
                            ),
                        ),

                        Padding(padding: EdgeInsets.only(left: 24,right: 24, top: 16),
                            child: CustomEditText(height: 55, width: double.maxFinite, placeholder:
                            "Email", textEditingController: _loginController.emailEditingController,
                                isSecure: false, isPasswordField: false, backgroundColor: Colors.white)),

                        Padding(padding: EdgeInsets.only(left: 24,right: 24, top: 16),
                            child: CustomEditText(height: 55, width: double.maxFinite, placeholder:
                            "Password", textEditingController: _loginController.passwordEditingController,
                                isSecure: true, isPasswordField: true, backgroundColor: Colors.white)),

                        Padding(padding: EdgeInsets.only(left: 24, right: 24,top: 4),
                            child: Row(
                              children: [
                                Container(
                                  child: Checkbox(
                                      value: true,
                                      activeColor: Colors.white,
                                      checkColor: Color.fromRGBO(255, 205, 56, 1.0),
                                      onChanged: (value){

                                      }),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color.fromRGBO(220, 220, 220, 1.0),
                                      width: 1
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(8))
                                  ),
                                  height: 24,
                                  width: 24,
                                ),

                                SizedBox(width: 8),

                                Text("Remember me", style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(135, 141, 156, 1.0),
                                    fontWeight: FontWeight.w500)),

                                Expanded(child: SizedBox(), flex: 1),

                                Text("Forgot Password?", style: TextStyle(
                                   fontSize: 14,
                                    color: Color.fromRGBO(255, 205, 56, 1.0),
                                    fontWeight: FontWeight.w500))
                              ],
                            )),

                        Padding(padding: EdgeInsets.only(top: 36, left: 24, right: 24, bottom: 24), child: GestureDetector(
                          child: ColoredButton(height: 45, width: double.maxFinite, title: "Sign In",
                              color: Color.fromRGBO(255, 205, 56, 1.0)),
                          onTap: (){
                            Get.to(() => HomeView());
                          },
                        )),
                      ],
                    ),
                  ),
                )

              ],
            )
          ],
        ),
      ),
    );
  }
}
