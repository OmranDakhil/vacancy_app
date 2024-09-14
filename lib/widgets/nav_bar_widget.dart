import 'package:flutter/material.dart';

class NavBarWidget extends StatelessWidget {
  const NavBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.list,
              color: Color(0xff0D0140),
            ),
            label: "List"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color(0xff0D0140),
            ),
            label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Color(0xff0D0140),
            ),
            label: "Profile"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Color(0xff0D0140),
            ),
            label: "Settings"),
      ],
    );
  }
}
