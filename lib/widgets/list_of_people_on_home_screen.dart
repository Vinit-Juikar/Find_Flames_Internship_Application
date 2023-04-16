import 'package:find_flames_internship_application/data/list_for_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Widget listOfFriendsOnHomeScreen() {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 20),
    height: 140.h,
    width: double.infinity,
    // color: Colors.black,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 4,
      itemBuilder: (context, index) {
        return Center(
          child: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 7,
            ),
            height: 110.h,
            width: 90.w,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Stack(
              children: [
                SizedBox(
                  height: 100.h,
                  width: 90.w,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    child: Image.asset(
                      ImagesForHomeScreen[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  left: 10,
                  bottom: 0,
                  child: Container(
                    height: 20.h,
                    width: 70.w,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            NamesForHomeScreen[index],
                            style: GoogleFonts.nunito(
                              textStyle: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                          index > 0
                              ? Container(
                                  height: 10.h,
                                  margin: const EdgeInsets.only(left: 5),
                                  child: Image.asset(
                                    "assets/icons/BlueTick.png",
                                    fit: BoxFit.cover,
                                  ),
                                )
                              : Container(),
                        ],
                      ),
                    ),
                  ),
                ),
                index == 0
                    ? Positioned(
                        top: 37,
                        left: 30,
                        child: Container(
                          height: 22.25.h,
                          width: 25.w,
                          child: Image.asset(
                            "assets/icons/Heart.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    : Container(),
                index == 0
                    ? Positioned(
                        top: 70,
                        left: 30,
                        child: Container(
                          height: 22.25.h,
                          width: 25.w,
                          child: Text(
                            "20",
                            style: GoogleFonts.nunito(
                              textStyle: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ),
                      )
                    : Container()
              ],
            ),
          ),
        );
      },
    ),
  );
}
