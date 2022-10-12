import 'dart:async';

import 'package:dajek/widget/map.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../helper/constant.dart';
import '../../../routes/app_pages.dart';
import '../controllers/drivers_status_controller.dart';

class DriversStatusView extends GetView<DriversStatusController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: MapWidget()),
      backgroundColor: lightGrey,
      bottomNavigationBar: BottomBody(),
    );
  }
}

class BottomBody extends StatefulWidget {
  const BottomBody({Key? key}) : super(key: key);

  @override
  State<BottomBody> createState() => _BottomBodyState();
}

class _BottomBodyState extends State<BottomBody> {

  var status = 'Drivers found';

  driverPickup()async{
    var duration = Duration(seconds: 3);
    Timer(duration, (){
      setState(() {
        status = "Driver pickup";
      });
    });
  }

  tripOver()async{
    var duration = Duration(seconds: 6);
    Timer(duration, (){
      setState(() {
        status = "Trip over";
      });
    });
  }

  @override
  void initState() {
    super.initState();
    driverPickup();
    tripOver();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10.0,
              spreadRadius: 0.0,
              offset: Offset(0.0, 0.0),
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 25, 30, 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              status,
              style: textSignUp,
            ),
            SizedBox(
              height: 25,
            ),

            ///Driver Status
            Container(
              height: 90,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: lightGrey, width: 2)),
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 5, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(profil),
                                fit: BoxFit.cover,
                              )
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "B2021 ABC",
                                style: headPaymentText,
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Farahan Shibab - 10 Minutes duration",
                                style: subBottomSheeetText
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
            Spacer(flex: 6,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Spacer(flex: 1),
                Row(
                  children: [
                    Icon(Icons.phone, size: 25, color: grey1,),
                    SizedBox(width: 15,),
                    Text("Call", style: subBottomSheeetText2,)
                  ],
                ),
                Spacer(flex: 2,),
                InkWell(
                  onTap: (){
                    Get.toNamed(Routes.CHAT_SCREEN);
                  },
                  child: Row(
                    children: [
                      Icon(Icons.chat_bubble, size: 25, color: grey1,),
                      SizedBox(width: 15,),
                      Text("Chat", style: subBottomSheeetText2,),
                    ],
                  ),
                ),
                Spacer(flex: 1),
              ],
            ),
            Spacer(flex: 5,),
          ],
        ),
      ),
    );
  }
}
