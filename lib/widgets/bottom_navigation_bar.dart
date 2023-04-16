import 'package:find_flames_internship_application/screens/main_home_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarForHomeScreen extends StatefulWidget {
  const BottomNavigationBarForHomeScreen({super.key});

  @override
  State<BottomNavigationBarForHomeScreen> createState() =>
      _BottomNavigationBarForHomeScreenState();
}

class _BottomNavigationBarForHomeScreenState
    extends State<BottomNavigationBarForHomeScreen> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const MainHomeScreen(),
    const Text(""),
    const Text(""),
    const Text(""),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFFFFFFFF),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/image-removebg-preview.png",scale: 5,),
            label: '',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
             icon: Image.asset("assets/images/global_earth_icon-removebg-preview.png",scale: 5,),
            label: '',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
             icon: Image.asset("assets/images/calendar_icon-removebg-preview.png",scale: 5,),
            label: '',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
             icon: Image.asset("assets/images/messages_icon-removebg-preview.png",scale: 5,),
            label: '',
            backgroundColor: Colors.white,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.white,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: const IconThemeData(color: Colors.blue),
      ),
    );
  }
}
