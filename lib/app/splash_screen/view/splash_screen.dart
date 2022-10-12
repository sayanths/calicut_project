import 'dart:async';
import 'package:calicut_test/app/intro_screen/view/intro_screen.dart';
import 'package:calicut_test/app/splash_screen/controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loginCntrl = Get.put(SplashController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
                child: Image.asset(
              'asset/splash.jpg',
              fit: BoxFit.cover,
            )),
          ],
        ),
      ),
    );
  }

  splash() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.offAll(() => IndrouctionScreen());
  }
}
