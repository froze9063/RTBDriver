import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rtb_driver/app/modules/trips/views/tabs/completed_view.dart';
import 'package:rtb_driver/app/modules/trips/views/tabs/scheduled_view.dart';

import '../controllers/trips_controller.dart';

class TripsView extends GetView<TripsController> {

  TripsController _tripsController = Get.put(TripsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              child: Card(
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
                        Text("All Trips", style: TextStyle(
                            color: Color.fromRGBO(63, 61, 86, 1.0), fontSize: 16,
                            fontWeight: FontWeight.bold
                        )),
                        Expanded(child: SizedBox(),flex: 1),
                        Image.asset("assets/ic_notification.png", height: 28, width: 28),
                        SizedBox(width: 24),
                      ],
                    ),

                    SizedBox(height: 24),

                    TabBar(
                      controller: _tripsController.tabController,
                      unselectedLabelColor: Color.fromRGBO(63, 61, 86, 1.0),
                      unselectedLabelStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),
                      labelColor: Color.fromRGBO(255, 205, 56, 1.0),
                      labelStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
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
      ),
    );
  }
}
