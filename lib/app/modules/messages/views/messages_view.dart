import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rtb_driver/app/modules/chat/views/chat_view.dart';

import '../controllers/messages_controller.dart';

class MessagesView extends GetView<MessagesController> {
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

                GestureDetector(
                  child: Image.asset("assets/ic_menus.png", height: 28, width: 28),
                  onTap: (){

                  },
                ),

                Expanded(child: SizedBox(),flex: 1),

                Text("Messages", style: TextStyle(
                    color: Color.fromRGBO(63, 61, 86, 1.0), fontSize: 16,
                    fontWeight: FontWeight.bold
                )),

                Expanded(child: SizedBox(),flex: 1),

                Image.asset("assets/ic_notification.png", height: 28, width: 28),

                SizedBox(width: 24),
              ],
            ),

            Expanded(child: MediaQuery.removePadding(context: context,
                child: ListView.builder(itemBuilder: (context,index){
              return GestureDetector(
                child: Container(
                    margin: EdgeInsets.only(top: 16),
                    width: double.maxFinite,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.maxFinite,
                          child: Padding(
                            padding: EdgeInsets.only(left: 24,right: 24,top: 16,bottom: 16),
                            child: Row(
                              children: [
                                Image.asset("assets/img_message.png",height: 55,width: 55,
                                    fit: BoxFit.cover),
                                SizedBox(width: 16),
                                Expanded(child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Maryam Teresita Gomez", style: TextStyle(
                                        color: Color.fromRGBO(58, 58, 58, 1.0),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700
                                    )),
                                    SizedBox(height: 6),
                                    Text("Your bus  SAB 4124, is ready for Departure, in 10 minutes.", style: TextStyle(
                                        height: 1.5
                                    )),
                                    SizedBox(height: 4),
                                    Text("2 Hours Ago", style: TextStyle(
                                        color: Color.fromRGBO(188, 196, 204, 1.0),
                                        fontSize: 12
                                    )),
                                  ],
                                ),flex: 1),
                                Image.asset("assets/ic_three_dots.png",height: 6,width: 20)
                              ],
                            ),
                          ),
                        ),
                        Container(width: double.maxFinite, height: 1, color: Color.fromRGBO(243,
                            237, 241, 1.0)),
                      ],
                    )
                ),
                onTap: (){
                  Get.to(() => ChatView());
                },
              );
            },
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              itemCount: 8,
              primary: false,
            )), flex: 1)
          ],
        ),
      ),
    );
  }
}

