import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rtb_driver/app/modules/trip_details/views/trip_details_view.dart';
import 'package:rtb_driver/app/modules/trips/controllers/trips_controller.dart';

class ScheduledView extends StatelessWidget{

  TripsController _tripsController;
  ScheduledView(this._tripsController);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(padding: EdgeInsets.only(left: 24, right: 24, top: 24),child: Row(
            children: [
              Text("Filter by:", style: TextStyle(
                color: Color.fromRGBO(135, 141, 156, 1.0),
                  fontFamily: "PoppinsRegular"
              )),
              SizedBox(width: 8),
              Text("This Week", style: TextStyle(
                  color: Color.fromRGBO(63, 61, 86, 1.0),
                  fontFamily: "PoppinsMedium"
              )),
              SizedBox(width: 8),
              Image.asset("assets/ic_yellow_dropdown.png")
            ],
          )),

          SizedBox(height: 24),

          Expanded(child: ListView.builder(itemBuilder: (context, index){
            return Padding(padding: EdgeInsets.only(left: 24, right: 24, top: index == 0 ? 0 : 16), child: GestureDetector(
              child: Container(
                width: double.maxFinite,
                height: 245,
                child: Stack(
                  children: [
                    Positioned.fill(child: Align(
                      child: Container(
                        margin: EdgeInsets.only(top: 8, bottom: 8),
                        width: double.maxFinite,
                        padding: EdgeInsets.only(left: 24, right: 24, top: 16,bottom: 16),
                        decoration: BoxDecoration(
                            color: index == 0 ? Color.fromRGBO(248, 255, 249, 1.0) : Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            border: Border.all(
                                width: index == 0 ? 1 : 2,
                                color: index == 0 ? Color.fromRGBO(22, 212, 98, 1.0) : Color.fromRGBO(236, 239, 241, 1.0)
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(220, 220, 224, 0.5),
                                blurRadius: 0.5,
                                spreadRadius: 0.5,
                                offset: Offset(0.5, 0.5), // shadow direction: bottom right
                              )
                            ]
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text("10:15 AM", style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "PoppinsMedium",
                                    color: Color.fromRGBO(63, 61, 86, 1.0)
                                )),

                                Expanded(child: SizedBox(), flex: 1),

                                Text("1:05 PM", style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "PoppinsMedium",
                                    color: Color.fromRGBO(63, 61, 86, 1.0)
                                )),
                              ],
                            ),

                            SizedBox(height: 8),

                            Row(
                              children: [
                                Text("17-06-2021", style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: "PoppinsBold",
                                    color: index == 0 ? Color.fromRGBO(22, 212, 98, 1.0) : Color.fromRGBO(255, 205, 56, 1.0)
                                )),

                                Expanded(child: SizedBox(), flex: 1),

                                Text("17-06-2021", style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: "PoppinsBold",
                                    color: index == 0 ? Color.fromRGBO(22, 212, 98, 1.0) : Color.fromRGBO(255, 205, 56, 1.0)
                                )),
                              ],
                            ),

                            SizedBox(height: 8),

                            Row(
                              children: [
                                Container(
                                  child: Text("From", style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: "PoppinsMedium",
                                      color: Colors.white
                                  )),
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(63, 61, 86, 1.0),
                                      borderRadius: BorderRadius.all(Radius.circular(20))
                                  ),
                                  padding: EdgeInsets.only(left: 12, right: 12, top: 4,bottom: 4),
                                ),

                                Expanded(child: index == 0 ? Image.asset("assets/ic_track.png") : Image.asset("assets/ic_track_yellow.png"), flex: 1),

                                Container(
                                  child: Text("To", style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: "PoppinsMedium",
                                      color: Colors.white
                                  )),
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(63, 61, 86, 1.0),
                                      borderRadius: BorderRadius.all(Radius.circular(20))
                                  ),
                                  padding: EdgeInsets.only(left: 12, right: 12, top: 4,bottom: 4),
                                ),
                              ],
                            ),

                            SizedBox(height: 8),

                            Row(
                              children: [
                                Expanded(child: Column(
                                  children: [
                                    Text("Sungai Nibong Bus Terminal", style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: "PoppinsMedium",
                                        color: Color.fromRGBO(63, 61, 86, 1.0)
                                    )),

                                    SizedBox(height: 6),

                                    Text("Kuala Lumpur", style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: "PoppinsBold",
                                        color: index == 0 ? Color.fromRGBO(22, 212, 98, 1.0) : Color.fromRGBO(255, 205, 56, 1.0)
                                    ))
                                  ],
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                ), flex: 2),

                                Expanded(child: SizedBox(), flex: 1),

                                Expanded(child: Column(
                                  children: [
                                    Text("Sungai Nibong Bus Terminal",
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: "PoppinsMedium",
                                            color: Color.fromRGBO(63, 61, 86, 1.0)
                                        )),

                                    SizedBox(height: 6),

                                    Text("Kuala Lumpur", style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: "PoppinsBold",
                                        color: index == 0 ? Color.fromRGBO(22, 212, 98, 1.0) : Color.fromRGBO(255, 205, 56, 1.0)
                                    ))
                                  ],
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                ), flex: 2),
                              ],
                            ),
                          ],
                        ),
                      ),
                      alignment: Alignment.center,
                    )),

                    Column(
                      children: [
                        Row(
                          children: [
                            Expanded(child: SizedBox(), flex: 1),
                            Stack(
                              children: [
                                Container(
                                  height: 20,
                                  width: 35,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),
                                          bottomRight: Radius.circular(25)),
                                      border: Border(
                                          bottom: BorderSide(
                                              color: index == 0 ?Color.fromRGBO(22, 212, 98, 1.0) : Color.fromRGBO(236, 239, 241, 1.0),
                                              width: 1),
                                          right: BorderSide(
                                              color: index == 0 ?Color.fromRGBO(22, 212, 98, 1.0) : Color.fromRGBO(236, 239, 241, 1.0),
                                              width: 1),
                                          top: BorderSide(
                                              color: index == 0 ?Color.fromRGBO(22, 212, 98, 1.0) : Color.fromRGBO(236, 239, 241, 1.0),
                                              width: 1),
                                          left: BorderSide(
                                              color: index == 0 ?Color.fromRGBO(22, 212, 98, 1.0) : Color.fromRGBO(236, 239, 241, 1.0),
                                              width: 1)
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color.fromRGBO(220, 220, 224, 0.5),
                                          blurRadius: 0.5,
                                          spreadRadius: 0.5,
                                          offset: Offset(0.5, 0.5), // shadow direction: bottom right
                                        )
                                      ]
                                  ),
                                ),

                                Container(
                                  height: 8,
                                  width: 35,
                                  color: Colors.white,
                                )
                              ],
                            ),
                            Expanded(child: SizedBox(), flex: 1)
                          ],
                        ),

                        Expanded(child: SizedBox(), flex: 1),

                        Row(
                          children: [
                            Expanded(child: SizedBox(), flex: 1),
                            Stack(
                              children: [
                                Container(
                                  height: 19,
                                  width: 35,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(25),
                                          topRight: Radius.circular(25)),
                                      border: Border(
                                          bottom: BorderSide(
                                              color: index == 0 ?Color.fromRGBO(22, 212, 98, 1.0) : Color.fromRGBO(236, 239, 241, 1.0),
                                              width: 1),
                                          right: BorderSide(
                                              color: index == 0 ?Color.fromRGBO(22, 212, 98, 1.0) : Color.fromRGBO(236, 239, 241, 1.0),
                                              width: 1),
                                          top: BorderSide(
                                              color: index == 0 ?Color.fromRGBO(22, 212, 98, 1.0) : Color.fromRGBO(236, 239, 241, 1.0),
                                              width: 1),
                                          left: BorderSide(
                                              color: index == 0 ?Color.fromRGBO(22, 212, 98, 1.0) : Color.fromRGBO(236, 239, 241, 1.0),
                                              width: 1),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color.fromRGBO(220, 220, 224, 0.5),
                                          blurRadius: 0.5,
                                          spreadRadius: 0.5,
                                          offset: Offset(-0.5, -0.5), // shadow direction: bottom right
                                        )
                                      ]
                                  ),
                                  margin: EdgeInsets.only(bottom: 1),
                                ),

                                Positioned.fill(child: Align(
                                  child: Container(
                                    height: 8,
                                    width: 35,
                                    color: Colors.white,
                                  ),
                                  alignment: Alignment.bottomCenter,
                                ))
                              ],
                            ),
                            Expanded(child: SizedBox(), flex: 1)
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              onTap: (){
                Get.to(() => TripDetailsView());
              },
            ));
          },
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemCount: 5,
            primary: false,
          ), flex: 1)
        ],
      ),
    );
  }
}