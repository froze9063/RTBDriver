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
                    fontWeight: FontWeight.bold
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
                padding: EdgeInsets.only(left: 24, right: 24, top: 16),
                child: Row(
                  children: [
                    Image.asset("assets/img_message.png",height: 55,width: 55,
                        fit: BoxFit.cover),
                    SizedBox(width: 16),
                    Container(
                      padding: EdgeInsets.all(16),
                      child: Text("Hello sir ?", style: TextStyle(
                          color: Color.fromRGBO(63, 61, 86, 1.0), fontSize: 14,
                          fontWeight: FontWeight.w500
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
                          child: Text("Hello", style: TextStyle(
                              color: Colors.white, fontSize: 14,
                              fontWeight: FontWeight.w500
                          )),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 205, 56, 1.0),
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                        ),

                        SizedBox(height: 4),

                        Text("Read", style: TextStyle(
                            color: Color.fromRGBO(195, 194, 204, 1.0), fontSize: 14,
                            fontWeight: FontWeight.w500
                        ))
                      ],
                    ),
                    SizedBox(width: 16),
                    Image.asset("assets/img_message.png",height: 55,width: 55,
                        fit: BoxFit.cover),
                  ],
                ),
              );
            },
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              itemCount: 8,
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
              height: 75,
              child: Center(
                child: Container(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  height: 45,
                  child: Center(
                    child: TextField(
                      style: TextStyle(
                        color: Color.fromRGBO(63, 61, 86, 1.0)
                      ),
                      decoration: new InputDecoration.collapsed(
                          hintText: 'Type a message'
                      ),
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
