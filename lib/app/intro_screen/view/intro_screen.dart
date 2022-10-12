import 'package:calicut_test/app/intro_screen/controller/onboard_controller.dart';
import 'package:calicut_test/app/intro_screen/view/widgets/custom_button.dart';
import 'package:calicut_test/app/intro_screen/view/widgets/custom_page.dart';
import 'package:calicut_test/app/intro_screen/view/widgets/image_desc_dot.dart';
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
            CustomPageBuilder(controller: controller, size: size),
            ImageDescriptionBlueDots(controller: controller),
            CustomButton(controller: controller)
          ],
        ),
      ),
    );
  }
}



