import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class messages extends StatelessWidget {
  Widget ContainerforMessages() {
    return Container(
      height: 150.h,
      width: ScreenUtil().screenWidth,
      child: Row(
        children: [
          Container(
            height: 130.h,
            width: 100.h,
            color: Colors.green,
          )
        ],
      ),
    );
  }

  Widget ContainerforFirstMessages(String ImageForMessages, String Name,
      String VerificationMark, String Message, String Time, String Notification) {
    return Container(
      margin: EdgeInsets.only(top: 25),
      height: 150.h,
      width: ScreenUtil().screenWidth,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20),
            height: 110.h,
            width: 100.h,
            color: Colors.green,
          )
        ],
      ),
    );
  }

  const messages({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 30),
      height: ScreenUtil().screenHeight,
      width: ScreenUtil().screenWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(28),
          topRight: Radius.circular(28),
        ),
        color: Colors.amber,
      ),
      child: Column(children: [
        ContainerforFirstMessages(
          "assets/images/Ellipse 121.png",
          "Jordan","assets/icons/BlueTick.png","Hii","13:10","1",
        ),
        Container(),
        Container(),
      ]),
    );
  }
}
