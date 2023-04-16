// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'messages.dart';
import 'searchBar.dart';

class searchBarAndMessages extends StatelessWidget {
  const searchBarAndMessages({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 383.5.h,
      width: double.infinity,
      child: Stack(
        children: const [
          Positioned(
            top: 30,
            child: messages(),
          ),
          searchBar(),
        ],
      ),
    );
  }
}
