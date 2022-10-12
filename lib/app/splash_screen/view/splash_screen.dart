import 'dart:async';
import 'package:calicut_test/app/intro_screen/view/intro_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({Key? key}) : super(key: key);

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    splash();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(child: Image.asset('asset/splash.jpg',fit: BoxFit.cover,)),
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
