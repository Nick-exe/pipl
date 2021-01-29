import 'package:flutter/material.dart';
import 'package:pipl/presentation/pipl_icons.dart';

class PiplBottomNavBar extends StatelessWidget {
  final Function onNavBarItemTap;
  final int selectedIndex;

  PiplBottomNavBar({this.onNavBarItemTap, this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(color: Colors.black12, spreadRadius: 1, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            onTap: onNavBarItemTap,
            currentIndex: selectedIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(
                    Pipl.home__active_,
                  ),
                  label: 'home'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Pipl.calendar_bold,
                  ),
                  label: 'notes'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Pipl.paper_bold,
                  ),
                  label: 'events'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Pipl.notification__active_,
                    // color: Color(0xff200E32),
                  ),
                  label: 'notifications'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Pipl.profile__active_,
                    // color: Color(0xff200E32),
                  ),
                  label: 'profile'),
            ],
          ),
        ));
  }
}
