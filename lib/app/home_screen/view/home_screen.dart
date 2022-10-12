import 'package:calicut_test/app/home_screen/view/widget/bottom_nav.dart';
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
          const SizedBox(height: 300, width: double.infinity, child: Google()),
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
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(() => const ScreenCustom());
                    },
                    child: const DeliveryDetailsCustom(
                      image: 'asset/delivery-man.png',
                      title: 'pickUps',
                      color: red,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => const ScreenCustom());
                    },
                    child: const DeliveryDetailsCustom(
                      image: 'asset/delivered.png',
                      title: 'Delivery',
                      color: greenlight,
                    ),
                  ),
                  const DeliveryDetailsCustom(
                    image: 'asset/money.png',
                    title: 'Revenue',
                  ),
                  const DeliveryDetailsCustom(
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
      bottomNavigationBar: const CustomBottomNav(),
    );
  }
}
