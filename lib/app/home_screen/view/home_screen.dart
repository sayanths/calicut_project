import 'package:calicut_test/app/home_screen/view/widget/custom_grid.dart';
import 'package:calicut_test/app/home_screen/view/widget/custom_tab.dart';
import 'package:calicut_test/app/home_screen/view/widget/google_map.dart';
import 'package:calicut_test/app/home_screen/view/widget/inside_screen_custom.dart';
import 'package:calicut_test/app/home_screen/view/widget/pckup_containerc_ompleted.dart';
import 'package:calicut_test/app/home_screen/view/widget/tabbar.dart';
import 'package:calicut_test/app/utiles/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  bool val = false;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          actions: [
            Switch(value: true, onChanged: (value1) {}),
          ],
          backgroundColor: Colors.white,
          leading: const Icon(
            Icons.menu,
            color: Colors.black,
          )),
      body: ListView(
        children: [
          PickUpContainerCompleted(size: size),
          const TodaysTaskCustom(),
          TodaysTaskContainer(size: size),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Google(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: size.height / 10,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: darkGreen, style: BorderStyle.solid),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  DeliveryDetailsCustom(
                    image: 'asset/delivery-man.png',
                    title: 'pickUps',
                    color: red,
                  ),
                  DeliveryDetailsCustom(
                    image: 'asset/delivered.png',
                    title: 'Delivery',
                    color: greenlight,
                  ),
                  DeliveryDetailsCustom(
                    image: 'asset/money.png',
                    title: 'Revenue',
                  ),
                  DeliveryDetailsCustom(
                    image: 'asset/delivered.png',
                    title: 'Report',
                    color: red,
                  ),
                ],
              ),
            ),
          ),
          const DefaultTabController(
            length: 4,
            child: CustomTabBar(),
          )
        ],
      ),
      bottomNavigationBar: SizedBox(
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
      ),
    );
  }
}

