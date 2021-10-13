import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1000) {
        return const DesktopNavBar();
      }
      return Container();
    });
  }
}

class DesktopNavBar extends StatelessWidget {
  const DesktopNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          const Text(
            "Responsive",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: const [
              Text(
                "Home",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "Upcoming",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "Dashboard",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "About",
                style: TextStyle(color: Colors.white),
              )
            ],
          )
        ],
      ),
    );
  }
}
