import 'package:find_flames_internship_application/data/list_for_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Widget listOfFriendsOnHomeScreen() {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 20),
    height: 140.h,
    width: double.infinity,
    // color: Colors.black,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 4,
      itemBuilder: (context, index) {
        return Center(
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: 7,
            ),
            height: 110.h,
            width: 90.w,
            decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Stack(
              children: [
                Container(
                  height: 100.h,
                  width: 90.w,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Image.asset(
                      ImagesForHomeScreen[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ), // this is for image
                Positioned(
                  left: 10,
                  bottom: 0,
                  child: Container(
                    height: 20.h,
                    width: 70.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                      child: Text(
                        NamesForHomeScreen[index],
                        style: GoogleFonts.nunito(
                          textStyle: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ),
                ), // this is for the name
              ],
            ),
          ),
        );
      },
    ),
  );
}
