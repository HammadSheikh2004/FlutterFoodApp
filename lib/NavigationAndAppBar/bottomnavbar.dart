// MyBottomNavigationBar.dart

import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  MyBottomNavigationBar({required this.selectedIndex, required this.onItemTapped});

  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.selectedIndex,
      onTap: widget.onItemTapped,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Sign In',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_add),
          label: 'Sign Up',
        ),
      ],
      unselectedFontSize: 20,
      selectedFontSize: 20,
      iconSize: 30,
      selectedItemColor:const Color(0xFF46200A),

      unselectedItemColor: const Color(0xFFEEAA01),
    );
  }
}

