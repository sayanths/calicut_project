import 'package:calicut_test/app/home_screen/view/widget/custom_grid.dart';
import 'package:calicut_test/app/home_screen/view/widget/custom_tab.dart';
import 'package:calicut_test/app/utiles/color.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          indicator: const BoxDecoration(
            color: Color.fromARGB(255, 114, 213, 165),
          ),
          labelColor: Colors.black,
          labelStyle: const TextStyle(fontSize: 10),
          tabs: [
            Tab(
              icon: Image.asset('asset/menu.png', height: 25, width: 25),
              text: "All",
            ),
            Tab(
              icon: Image.asset('asset/logistics.png', height: 25, width: 25),
              text: "Pickup Request",
            ),
            Tab(
              icon: Image.asset('asset/accepted.png', height: 25, width: 25),
              text: "Accepted",
            ),
            Tab(
              icon:
                  Image.asset('asset/delivery-boy.png', height: 25, width: 25),
              text: "Delivery jobs",
            )
          ],
        ),
        SizedBox(
            height: MediaQuery.of(context).size.height * 0.9,
            child: const TabBarView(children: [
              TabScreen(),
              TabScreen(),
              TabScreen(),
              TabScreen(),
            ]))
      ],
    );
  }
}

class DeliveryDetailsCustom extends StatelessWidget {
  final String image;
  final String title;
  final Color? color;
  const DeliveryDetailsCustom({
    Key? key,
    required this.image,
    required this.title,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(image, width: 30, height: 30, color: color),
        Text(title)
      ],
    );
  }
}

class TodaysTaskContainer extends StatelessWidget {
  const TodaysTaskContainer({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height / 3.1,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 15),
            child: Grid(
                height: double.infinity,
                width: double.infinity,
                color: const Color.fromARGB(255, 8, 73, 116),
                test1: "Today's\nPickup",
                test2: "Jobs",
                num: "5"),
          )),
          SizedBox(
            width: 180,
            child: Column(
              children: [
                Expanded(
                    child: Grid(
                        height: double.infinity,
                        width: double.infinity,
                        color: green,
                        test1: "Assigned Delivery",
                        test2: "Jobs",
                        num: "12")),
                Expanded(
                    child: Grid(
                        height: double.infinity,
                        width: double.infinity,
                        color: const Color.fromARGB(255, 44, 207, 199),
                        test1: "Today's",
                        test2: "Revenue",
                        num: "5"))
              ],
            ),
          ),
          const SizedBox(width: 10)
        ],
      ),
    );
  }
}

class TodaysTaskCustom extends StatelessWidget {
  const TodaysTaskCustom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20, top: 8, bottom: 8),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "Today's Task",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
    );
  }
}
