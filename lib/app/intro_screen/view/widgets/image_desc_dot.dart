import 'package:calicut_test/app/intro_screen/controller/onboard_controller.dart';
import 'package:calicut_test/app/utiles/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageDescriptionBlueDots extends StatelessWidget {
  const ImageDescriptionBlueDots({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final OnboardingController controller;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 100,
      left: 160,
      child: Row(
        children: List.generate(
          controller.onboardingPages.length,
          (index) => Obx(() {
            return Container(
              margin: const EdgeInsets.all(4),
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                color:
                    controller.selectedPageIndex.value == index ? blue : grey,
                shape: BoxShape.circle,
              ),
            );
          }),
        ),
      ),
    );
  }
}
