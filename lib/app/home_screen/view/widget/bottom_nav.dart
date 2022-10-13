import 'package:calicut_test/app/utiles/color.dart';
import 'package:flutter/material.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: BottomNavigationBar(
          // showSelectedLabels: false,
          // showUnselectedLabels: false,
          currentIndex: 1,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: black,
                ),
                activeIcon: ColoredBox(
                  color: green,
                  child: Icon(Icons.home, color: black),
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.note_add_outlined, size: 50, color: black),
                activeIcon: SizedBox(
                  width: double.maxFinite,
                  height: 40,
                  child: ColoredBox(
                    color: green,
                    child: Center(
                      child: Icon(Icons.note_add_outlined, color: black),
                    ),
                  ),
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications,
                  color: black,
                ),
                activeIcon: ColoredBox(
                  color: green,
                  child: Icon(Icons.home, color: black),
                ),
                label: "")
          ]),
    );
  }
}
