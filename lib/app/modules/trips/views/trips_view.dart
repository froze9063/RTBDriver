import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rtb_driver/app/modules/menus/views/menus_view.dart';
import 'package:rtb_driver/app/modules/notification/views/notification_view.dart';
import 'package:rtb_driver/app/modules/trips/views/tabs/completed_view.dart';
import 'package:rtb_driver/app/modules/trips/views/tabs/scheduled_view.dart';

import '../controllers/trips_controller.dart';

class TripsView extends GetView<TripsController> {

  TripsController _tripsController = Get.put(TripsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: double.maxFinite,
            child: Card(
              child: Column(
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
                            child: Image.asset("assets/ic_menus.png", height: 28, width: 28),
                          ),
                        ),
                        onTap: (){
                            Get.to(() => MenusView());
                        },
                      ),
                      Expanded(child: SizedBox(),flex: 1),
                      Text("All Trips", style: TextStyle(
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

                  SizedBox(height: 8),

                  TabBar(
                    controller: _tripsController.tabController,
                    unselectedLabelColor: Color.fromRGBO(63, 61, 86, 1.0),
                    unselectedLabelStyle: TextStyle(
                        fontSize: 16,
                        fontFamily: "PoppinsMedium"
                    ),
                    labelColor: Color.fromRGBO(255, 205, 56, 1.0),
                    labelStyle: TextStyle(
                        fontSize: 16,
                        fontFamily: "PoppinsMedium"
                    ),
                    indicatorColor: Color.fromRGBO(255, 205, 56, 1.0),
                    indicatorWeight: 3.0,
                    tabs: <Widget>[
                      new Tab(text: "Scheduled"),
                      new Tab(text: "Completed"),
                    ],
                  )
                ],
              ),
            ),
          ),

          Expanded(child: TabBarView(
            controller: _tripsController.tabController,
            children: [
              ScheduledView(this._tripsController),
              CompletedView(this._tripsController),
            ],
          ),flex: 1)
        ],
      ),
    );
  }
}
