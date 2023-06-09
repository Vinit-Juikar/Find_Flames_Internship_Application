// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class messages extends StatelessWidget {
  
  Widget ContainerforPeopleWithVerifiedTick(
      String ImageForMessages,
      String Name,
      String VerificationMark,
      String Message,
      String Time,
      String Notification) {
    return Container(
      margin: EdgeInsets.only(top: Notification == "1" ? 50 : 15),
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
          ),
          Positioned(
              left: 125,
              top: 15,
              child: VerificationMark == ""
                  ? Text(
                      Name,
                      style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w400,
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                    )
                  : Row(
                      children: [
                        Text(
                          Name,
                          style: GoogleFonts.nunito(
                            color: Name == "Tim"
                                ? const Color(0xFF818181)
                                : const Color(0xFF505050),
                            textStyle: const TextStyle(fontSize: 20),
                          ),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Image.asset(VerificationMark),
                      ],
                    )),
          Positioned(
            top: 45,
            left: 125,
            child: Text(
              Message,
              style: GoogleFonts.nunito(
                color: Name == "Tim"
                    ? const Color(0xFF818181)
                    : Name == "James"
                        ? const Color(0xFFFF5F8F)
                        : const Color(0xFF505050),
                fontStyle: Message == "Typing..."
                    ? FontStyle.italic
                    : FontStyle.normal,
                textStyle: const TextStyle(fontSize: 16),
              ),
            ),
          ),
          Positioned(
            right: 40,
            top: 20,
            child: Text(
              Time,
              style: GoogleFonts.nunito(
                color: Name == "Tim"
                    ? const Color(0xFF818181)
                    : const Color(0xFF505050),
                textStyle: const TextStyle(fontSize: 12),
              ),
            ),
          ),
          Notification == ""
              ? Container()
              : Positioned(
                  right: 40,
                  top: 40,
                  child: Container(
                    height: 17.h,
                    width: 17.h,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFF5F8F),
                      borderRadius: BorderRadius.all(
                        Radius.circular(44),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        Notification,
                        style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFFFFFFFF),
                          textStyle: const TextStyle(fontSize: 12),
                        ),
                      ),
                    ),
                  ),
                ),
          Positioned.fill(
            bottom: -100,
            child: Row(
              children: const [
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
          ),
        ],
      ),
    );
  }

  const messages({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
