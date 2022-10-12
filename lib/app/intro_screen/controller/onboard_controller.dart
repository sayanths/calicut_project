import 'package:calicut_test/app/intro_screen/model/on_board_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  var selectedPageIndex = 0.obs;
  bool get isLastPage => selectedPageIndex.value == onboardingPages.length - 1;
  var pageController = PageController();

  List<OnboardingInfo> onboardingPages = [
    OnboardingInfo(
        'asset/WhatsApp_Image_2022-09-27_at_3.49.19_PM__1_-removebg-preview (1).png',
        'Accept a job',
        ' Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book'),
    OnboardingInfo(
        'asset/images__1_-removebg-preview.png',
        'Tracking Real time',
        ' Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book'),
    OnboardingInfo(
        'asset/images__2_-removebg-preview.png',
        'Get On- Time Service',
        ' Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book')
  ];
}
