import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rtb_driver/app/modules/trips/controllers/trips_controller.dart';

class ScheduledView extends StatelessWidget{

  TripsController _tripsController;
  ScheduledView(this._tripsController);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(padding: EdgeInsets.only(left: 24, right: 24, top: 24),child: Row(
            children: [
              Text("Filter by:", style: TextStyle(
                color: Color.fromRGBO(135, 141, 156, 1.0),
                  fontWeight: FontWeight.w700
              )),
              SizedBox(width: 8),
              Text("This Week", style: TextStyle(
                  color: Color.fromRGBO(63, 61, 86, 1.0),
                  fontWeight: FontWeight.w700
              )),
              SizedBox(width: 8),
              Image.asset("assets/ic_yellow_dropdown.png")
            ],
          )),

          Expanded(child: ListView.builder(itemBuilder: (context, index){
            return Container(
              margin: EdgeInsets.only(top: 24,left: 24, right: 24),
              width: double.maxFinite,
              padding: EdgeInsets.only(left: 24, right: 24, top: 16,bottom: 16),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(248, 255, 249, 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(
                      width: 1,
                      color: Color.fromRGBO(22, 212, 98, 1.0)
                  )
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("10:15 AM", style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(63, 61, 86, 1.0)
                      )),

                      Expanded(child: SizedBox(), flex: 1),

                      Text("1:05 PM", style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(63, 61, 86, 1.0)
                      )),
                    ],
                  ),

                  SizedBox(height: 8),

                  Row(
                    children: [
                      Text("17-06-2021", style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(22, 212, 98, 1.0)
                      )),

                      Expanded(child: SizedBox(), flex: 1),

                      Text("17-06-2021", style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(22, 212, 98, 1.0)
                      )),
                    ],
                  ),

                  SizedBox(height: 16),

                  Row(
                    children: [
                      Container(
                        child: Text("From", style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Colors.white
                        )),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(63, 61, 86, 1.0),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        padding: EdgeInsets.only(left: 12, right: 12, top: 4,bottom: 4),
                      ),

                      Expanded(child: Image.asset("assets/ic_track.png"), flex: 1),

                      Container(
                        child: Text("To", style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
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

                  SizedBox(height: 16),

                  Row(
                    children: [
                      Expanded(child: Column(
                        children: [
                          Text("TBS (Terminal Bersepadu Selatan)", style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(63, 61, 86, 1.0)
                          )),

                          SizedBox(height: 6),

                          Text("Kuala Lumpur", style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(22, 212, 98, 1.0)
                          ))
                        ],
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                      ), flex: 2),

                      Expanded(child: SizedBox(), flex: 1),

                      Expanded(child: Column(
                        children: [
                          Text("TBS (Terminal Bersepadu Selatan)",
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(63, 61, 86, 1.0)
                              )),

                          SizedBox(height: 6),

                          Text("Kuala Lumpur", style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(22, 212, 98, 1.0)
                          ))
                        ],
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                      ), flex: 2),
                    ],
                  ),
                ],
              ),
            );
          },
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemCount: 2,
            primary: false,
          ), flex: 1)
        ],
      ),
    );
  }
}