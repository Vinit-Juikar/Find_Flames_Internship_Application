import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar AppBarForHomeScreen() {
  return AppBar(
    backgroundColor: Color(0xFFFFF6FA),
    toolbarHeight: 60.h,
    elevation: 0,
    title: Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 0),
            child: Image.asset("assets/images/Ellipse 2.png"),
          ),
          Spacer(),
          Text(
            "Find Flames",
            style: GoogleFonts.nunito(
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Color(0xFFFF5F8F),
              ),
            ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(right: 20),
            child: Image.asset(
             "assets/icons/More.png",
              color: Color(0xFF505050),
            ),
          )
        ],
      ),
    ),
  );
}
