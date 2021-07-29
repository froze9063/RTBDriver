import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MessagesController extends GetxController {

  final count = 0.obs;

  late List<Map> messageList;
  int from = 0;

  @override
  void onInit() {
    if(Get.arguments != null){
      if(Get.arguments["from"] != null){
        from = Get.arguments["from"];
      }
    }
    messageList = [];
    setMessagesList();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  void setMessagesList(){
    Map message1 = Map();
    message1["color"] = Colors.white;
    message1["read"] = 0;

    Map message2 = Map();
    message2["color"] = Colors.white;
    message2["read"] = 0;

    Map message3 = Map();
    message3["color"] = Colors.white;
    message3["read"] = 0;

    Map message4 = Map();
    message4["color"] = Colors.white;
    message4["read"] = 0;

    Map message5 = Map();
    message5["color"] = Colors.white;
    message5["read"] = 0;

    Map message6 = Map();
    message6["color"] = Colors.white;
    message6["read"] = 0;

    Map message7 = Map();
    message7["color"] = Colors.white;
    message7["read"] = 0;

    Map message8 = Map();
    message8["color"] = Colors.white;
    message8["read"] = 0;

    messageList.add(message1);
    messageList.add(message2);
    messageList.add(message3);
    messageList.add(message4);
    messageList.add(message5);
    messageList.add(message6);
    //messageList.add(message7);
   // messageList.add(message8);
  }

  void changeMessageColor(Color color, int index){
    messageList[index]["color"] = color;
    update(["message"]);
  }
}
