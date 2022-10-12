import 'package:calicut_test/app/intro_screen/controller/onboard_controller.dart';
import 'package:calicut_test/app/login_screen/view/login_screen.dart';
import 'package:calicut_test/app/utiles/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final OnboardingController controller;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30,
      right: 0,
      left: 2,
      child: Obx(() => controller.selectedPageIndex.value == 2
          ? Padding(
              padding: const EdgeInsets.only(left: 19, right: 19),
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(10),
                color: green,
                child: MaterialButton(
                  padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                  minWidth: MediaQuery.of(context).size.width,
                  onPressed: () {
                    Get.to(LoginScreen());
                  },
                  child: const Text('Get Started',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          color: white,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            )
          : const SizedBox()),
    );
  }
}
