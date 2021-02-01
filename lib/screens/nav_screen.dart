import 'package:flutter/material.dart';
import 'package:pipl/components/pipl_bottom_navbar.dart';
import 'package:pipl/screens/events_screen.dart';
import 'package:pipl/screens/homepage_screen.dart';
import 'package:pipl/screens/notes_screen.dart';
import 'package:pipl/screens/profile_screen.dart';
import 'package:pipl/screens/reminders_screen.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int selectedIndex = 0;
  List<Widget> _widgetOptions = [
    Home(),
    Events(),
    Notes(),
    Reminders(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(selectedIndex),
      bottomNavigationBar: PiplBottomNavBar(
        onNavBarItemTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        selectedIndex: selectedIndex,
      ),
    );
  }
}
