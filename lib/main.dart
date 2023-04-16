import 'package:find_flames_internship_application/screens/main_home_screen.dart';
import 'package:find_flames_internship_application/widgets/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SafeArea(
            child: Scaffold(
              body: MainHomeScreen(),
              bottomNavigationBar: BottomNavigationBarForHomeScreen(),
            ),
          ),
        );
      },
    );
  }
}
