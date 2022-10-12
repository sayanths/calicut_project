import 'package:calicut_test/app/intro_screen/controller/onboard_controller.dart';
import 'package:calicut_test/app/login_screen/view/login_screen.dart';
import 'package:calicut_test/app/utiles/color.dart';
import 'package:calicut_test/app/utiles/widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IndrouctionScreen extends StatelessWidget {
  IndrouctionScreen({Key? key}) : super(key: key);

  final controller = Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
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
                }),
            Positioned(
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
                        color: controller.selectedPageIndex.value == index
                            ? blue
                            : grey,
                        shape: BoxShape.circle,
                      ),
                    );
                  }),
                ),
              ),
            ),
            Positioned(
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
            )
          ],
        ),
      ),
    );
  }
}
