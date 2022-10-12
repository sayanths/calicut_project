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
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: 1,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                activeIcon: ColoredBox(
                  color: Colors.cyan,
                  child: Icon(Icons.home, color: Colors.black),
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.note_add_outlined,
                    size: 50, color: Colors.black),
                activeIcon: SizedBox(
                  width: double.maxFinite,
                  height: 40,
                  child: ColoredBox(
                    color: Colors.cyan,
                    child: Center(
                      child:
                          Icon(Icons.note_add_outlined, color: Colors.black),
                    ),
                  ),
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.notification_important,
                  color: Colors.black,
                ),
                activeIcon: ColoredBox(
                  color: Colors.cyan,
                  child: Icon(Icons.home, color: Colors.black),
                ),
                label: "")
          ]),
    );
  }
}

