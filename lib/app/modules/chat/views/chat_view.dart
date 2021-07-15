import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/chat_controller.dart';

class ChatView extends GetView<ChatController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 24),

            Row(
              children: [
                SizedBox(width: 24),

                Visibility(child: GestureDetector(
                  child: Image.asset("assets/ic_close_black.png", height: 28, width: 28),
                  onTap: (){

                  },
                ), visible: false),

                Expanded(child: SizedBox(),flex: 1),

                Text("Maryam Teresita Gomez", style: TextStyle(
                    color: Color.fromRGBO(63, 61, 86, 1.0), fontSize: 16,
                    fontFamily: "PoppinsBold",
                )),

                Expanded(child: SizedBox(),flex: 1),

                GestureDetector(
                  child: Image.asset("assets/ic_close_black.png", height: 28, width: 28),
                  onTap: (){
                    Get.back();
                  },
                ),

                SizedBox(width: 24),
              ],
            ),

            Expanded(child: ListView.builder(itemBuilder: (context,index){
              return index %2 == 0 ? Padding(
                padding: EdgeInsets.only(left: 24, right: 24, top: index == 0 ? 24 : 16),
                child: Row(
                  children: [
                    Image.asset("assets/img_message.png",height: 55,width: 55,
                        fit: BoxFit.cover),
                    SizedBox(width: 16),
                    Container(
                      padding: EdgeInsets.all(16),
                      child: Text("Hi John", style: TextStyle(
                          color: Color.fromRGBO(63, 61, 86, 1.0), fontSize: 14,
                          fontFamily: "PoppinsRegular",
                      )),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(240, 239, 250, 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                    )
                  ],
                ),
              ) : Padding(
                padding: EdgeInsets.only(left: 24, right: 24, top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          padding: EdgeInsets.all(16),
                          child: Text("Please hurry up.", style: TextStyle(
                              color: Colors.white, fontSize: 14,
                              fontFamily: "PoppinsRegular",
                          )),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 205, 56, 1.0),
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                        ),

                        SizedBox(height: 4),

                        Text("Read", style: TextStyle(
                            color: Color.fromRGBO(195, 194, 204, 1.0), fontSize: 14,
                            fontFamily: "PoppinsRegular",
                        ))
                      ],
                    ),
                    SizedBox(width: 16),
                    Image.asset("assets/img_driver_home.png",height: 55,width: 55,
                        fit: BoxFit.cover),
                  ],
                ),
              );
            },
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              itemCount: 6,
              primary: false,
            ), flex: 1),

            Container(
              width: double.maxFinite,
              height: 1,
              color: Color.fromRGBO(235, 235, 235, 1.0),
            ),

            Container(
              margin: EdgeInsets.only(left: 24, right: 24),
              width: double.maxFinite,
              height: 85,
              child: Center(
                child: Container(
                  padding: EdgeInsets.only(left: 16),
                  height: 55,
                  child: Center(
                    child: Row(
                      children: [
                        Expanded(child: TextField(
                          style: TextStyle(
                              color: Color.fromRGBO(63, 61, 86, 1.0)
                          ),
                          decoration: new InputDecoration.collapsed(
                              hintText: 'Type a message'
                          ),
                        ), flex: 1),

                        Container(
                          margin: EdgeInsets.all(8),
                          width: 45,
                          height: 45,
                          child: Image.asset("assets/ic_send.png", height: 12, width: 12),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 205, 56, 1.0),
                              borderRadius: BorderRadius.all(Radius.circular(6))
                          ),
                        )
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(244, 244, 244, 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
