// ignore_for_file: non_constant_identifier_names

import 'package:find_flames_internship_application/data/list_for_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

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

  Widget DividerForMessages() {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: const [
          Expanded(
            child: Divider(
              indent: 25,
              thickness: 20.0,
              height: 30,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Divider(
                endIndent: 25,
                thickness: 20.0,
                height: 30,
                color: Colors.black),
          )
        ],
      ),
    );
  }

  Widget ContainerforPeopleWithVerifiedTick(
      String ImageForMessages,
      String Name,
      String VerificationMark,
      String Message,
      String Time,
      String Notification) {
    return Container(
      margin: EdgeInsets.only(top: Notification == "1" ? 50 : 15),
      // color: Colors.pink,
      height: 80.h,
      width: ScreenUtil().screenWidth,
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 18),
            height: 70.h,
            width: 70.h,
            child: Image.asset(
              ImageForMessages,
              fit: BoxFit.contain,
            ),
          ), //for image
          Positioned(
              left: 125,
              top: 15,
              child: VerificationMark == ""
                  ? Text(
                      Name,
                      style: GoogleFonts.nunito(
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                    )
                  : Row(
                      children: [
                        Text(
                          Name,
                          style: GoogleFonts.nunito(
                            textStyle: const TextStyle(fontSize: 20),
                          ),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Image.asset(VerificationMark),
                      ],
                    )),
          Positioned(
            top: 45,
            left: 125,
            child: Container(
              child: Text(
                Message,
                style: GoogleFonts.nunito(
                  fontStyle: Message == "Typing..."
                      ? FontStyle.italic
                      : FontStyle.normal,
                  textStyle: const TextStyle(fontSize: 16),
                ),
              ),
            ),
          ), //for verification
          Positioned(
            right: 40,
            top: 20,
            child: Text(
              Time,
              style: GoogleFonts.nunito(
                textStyle: const TextStyle(fontSize: 12),
              ),
            ),
          ), //for message
          Notification == ""
              ? Container()
              : Positioned(
                  right: 52,
                  top: 40,
                  child: Container(
                    height: 17.h,
                    width: 17.h,
                    decoration: BoxDecoration(
                      color: Color(0xFFFF5F8F),
                      borderRadius: BorderRadius.all(
                        Radius.circular(44),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        Notification,
                        style: GoogleFonts.nunito(
                          textStyle: const TextStyle(fontSize: 12),
                        ),
                      ),
                    ),
                  ),
                ), //for date
          // DividerForMessages(), //for messages
          Positioned.fill(
            bottom: -100, // to overlap the divider below
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                    indent: 30,
                    thickness: 2.5,
                    height: 30,
                    color: Color(0xFFFFF6FA),
                  ),
                ),
                Expanded(
                  child: Divider(
                    endIndent: 30,
                    thickness: 2.5,
                    height: 30,
                    color: Color(0xFFFFF6FA),
                  ),
                ),
              ],
            ),
          ), //for border
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
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(28),
          topRight: Radius.circular(28),
        ),
        color: Color(0xFFFFFFFF),
      ),
      child: Column(
        children: [
          ContainerforPeopleWithVerifiedTick(
            "assets/images/Ellipse 121.png",
            "Jordan",
            "assets/icons/BlueTick.png",
            "Hii!",
            "13:10",
            "1",
          ),
          ContainerforPeopleWithVerifiedTick(
            "assets/images/Ellipse 122.png",
            "Tim",
            "assets/icons/BlueTick.png",
            "Hii!",
            "13:10",
            "",
          ),
          ContainerforPeopleWithVerifiedTick(
            "assets/images/Ellipse 121 (2).png",
            "James",
            "",
            "Typing...",
            "13:10",
            "9+",
          ),
        ],
      ),
    );
  }
}
