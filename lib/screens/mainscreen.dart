import 'package:flutter/material.dart';
import 'package:food_app/screens/home.dart';
import 'package:food_app/screens/signin.dart';
import 'package:food_app/screens/signup.dart';
import 'package:food_app/NavigationAndAppBar/bottomnavbar.dart';
import 'package:food_app/screens/splashscreen.dart';

class MainScreen extends StatefulWidget {
  final int selectedIndex;

  const MainScreen({Key? key, this.selectedIndex = 0}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;


  @override
  void initState() {
    super.initState();
    SplashScreen();
    _selectedIndex = widget.selectedIndex;
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      const Home(),
      const SignIn(),
      const SignUp(),
    ];

    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(left: 10,right: 10,bottom: 5),
        decoration: BoxDecoration(
          color: Colors.transparent.withOpacity(0.0), // Set your desired transparent color
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 10,
              offset: const Offset(0,10),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: MyBottomNavigationBar(
            selectedIndex: _selectedIndex,
            onItemTapped: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
