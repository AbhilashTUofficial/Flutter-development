import 'package:flutter/material.dart';
import 'package:new_sapp/Screens/explore.dart';
import 'package:new_sapp/Widget/CustomAppBar.dart';

import 'export.dart';

class Controller extends StatefulWidget {
  @override
  _ControllerState createState() => _ControllerState();
}

class _ControllerState extends State<Controller> {
  int _selectedIndex = 0;
  final tabs = [Home(), Liked(), Watch(), News(), Explore()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: CustomAppBar(),
      ),
      body: tabs[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              backgroundColor: Colors.blueAccent,
              icon: Icon(
                Icons.home,
                color: Colors.black,
                size: 30,
              ),
              activeIcon: Icon(
                Icons.home,
                color: Colors.white,
                size: 30,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              backgroundColor: Colors.pink,
              icon: Icon(
                Icons.favorite,
                color: Colors.black,
                size: 30,
              ),
              activeIcon: Icon(
                Icons.favorite,
                color: Colors.white,
                size: 30,
              ),
              label: "New"
                  "s"),
          BottomNavigationBarItem(
              backgroundColor: Colors.purple,
              icon: Icon(
                Icons.search,
                size: 30,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.search,
                color: Colors.white,
                size: 30,
              ),
              label: ""
                  "Explore"),
          BottomNavigationBarItem(
            backgroundColor: Colors.amberAccent,
              icon: Icon(
                Icons.live_tv_rounded,
                color: Colors.black,
                size: 30,
              ),
              activeIcon: Icon(
                Icons.live_tv_rounded,
                color: Colors.white,
                size: 30,
              ),
              label: "Watch"),
          BottomNavigationBarItem(
            backgroundColor: Colors.lightGreen,
              icon: Icon(
                Icons.notifications,
                size: 30,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.notifications,
                color: Colors.white,
                size: 30,
              ),
              label: "News"),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black87,
        onTap: _onItemTapped,
      ),
    );
  }
}
