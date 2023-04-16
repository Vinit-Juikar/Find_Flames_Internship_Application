import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class searchBar extends StatelessWidget {
  const searchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              borderRadius: BorderRadius.all(
                Radius.circular(42),
              ),
            ),
            height: 50.h,
            width: 320.w,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(
                    Icons.search,
                    size: 40,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    "Search",
                    style:
                        GoogleFonts.nunito(textStyle: TextStyle(fontSize: 18)),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
