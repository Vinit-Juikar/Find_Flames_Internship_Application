import 'package:find_flames_internship_application/widgets/appbar.dart';
import 'package:find_flames_internship_application/widgets/list_of_people_on_home_screen.dart';
import 'package:find_flames_internship_application/widgets/searchBar_and_messages.dart';
import 'package:flutter/material.dart';

class MainHomeScreen extends StatelessWidget {
  const MainHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF6FA),
      appBar: AppBarForHomeScreen(),
      body: Column(
        children: [
          listOfFriendsOnHomeScreen(),
          const searchBarAndMessages(),
        ],
      ),
    );
  }
}
