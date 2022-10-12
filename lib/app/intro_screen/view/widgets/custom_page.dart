import 'package:calicut_test/app/intro_screen/controller/onboard_controller.dart';
import 'package:calicut_test/app/utiles/widget.dart';
import 'package:flutter/material.dart';

class CustomPageBuilder extends StatelessWidget {
  const CustomPageBuilder({
    Key? key,
    required this.controller,
    required this.size,
  }) : super(key: key);

  final OnboardingController controller;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: controller.selectedPageIndex,
        itemCount: controller.onboardingPages.length,
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                controller.onboardingPages[index].imageAsset,
                width: size.width / 1,
                height: size.height / 3,
              ),
              height30,
              Text(
                controller.onboardingPages[index].title,
                style: const TextStyle(
                    fontSize: 24, fontWeight: FontWeight.w500),
              ),
              height10,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 64.0),
                child: Text(
                  controller.onboardingPages[index].description,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 18),
                ),
              ),
            ],
          );
        });
  }
}
