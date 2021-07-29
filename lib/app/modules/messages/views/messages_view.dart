import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rtb_driver/app/modules/chat/views/chat_view.dart';
import 'package:rtb_driver/app/modules/menus/views/menus_view.dart';
import 'package:rtb_driver/app/modules/notification/views/notification_view.dart';

import '../controllers/messages_controller.dart';

class MessagesView extends GetView<MessagesController> {

  MessagesController _messagesController = Get.put(MessagesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 40),
          Row(
            children: [
              SizedBox(width: 10),
              GestureDetector(
                child: Container(
                  height: 55,
                  width: 55,
                  color: Colors.transparent,
                  child: Center(
                    child: Image.asset(_messagesController.from == 0 ? "assets/ic_menus.png" :
                    "assets/ic_yellow_back.png", height: _messagesController.from == 0 ? 28 : 24,
                        width: _messagesController.from == 0 ? 28 : 24),
                  ),
                ),
                onTap: (){
                  _messagesController.from == 0 ? Get.to(() => MenusView()) :
                  Get.back();
                },
              ),
              Expanded(child: SizedBox(),flex: 1),
              Text("Messages", style: TextStyle(
                  color: Color.fromRGBO(63, 61, 86, 1.0), fontSize: 16,
                  fontFamily: "PoppinsBold"
              )),
              Expanded(child: SizedBox(),flex: 1),
              GestureDetector(
                child: Container(
                  width: 55,
                  height: 55,
                  color: Colors.transparent,
                  child: Center(
                    child: Image.asset("assets/ic_notification.png", height: 28, width: 28),
                  ),
                ),
                onTap: (){
                  Get.to(() => NotificationView());
                },
              ),
              SizedBox(width: 10),
            ],
          ),

          Expanded(child: GetBuilder<MessagesController>(
            id: "message",
            init: MessagesController(),
            builder: (value) => MediaQuery.removePadding(context: context,
                child: ListView.builder(itemBuilder: (context,index){
                  Map messageMap = value.messageList[index];
                  return GestureDetector(
                    child: Container(
                        color: messageMap["color"],
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
                                          fontFamily: "PoppinsBold",
                                        )),
                                        SizedBox(height: 6),
                                        Text("Your bus  SAB 4124, is ready for Departure, in 10 minutes.",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                          height: 1.5,
                                          fontFamily: "PoppinsRegular",
                                        )),
                                        SizedBox(height: 4),
                                        Text("2 Hours Ago", style: TextStyle(
                                          color: Color.fromRGBO(188, 196, 204, 1.0),
                                          fontSize: 12,
                                          fontFamily: "PoppinsMedium",
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
                      value.changeMessageColor(Colors.white,index);
                      Get.to(() => ChatView());
                    },
                    onTapCancel: (){
                      value.changeMessageColor(Colors.white,index);
                    },
                    onTapUp: (text){
                      value.changeMessageColor(Color.fromRGBO(235, 235, 235, 1.0).withOpacity(0.5),index);
                    },
                    onTapDown: (text){
                      value.changeMessageColor(Color.fromRGBO(235, 235, 235, 1.0).withOpacity(0.5),index);
                    },
                  );
                },
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  itemCount: value.messageList.length,
                  primary: false,
                )),
          ), flex: 1)
        ],
      ),
    );
  }
}

