import 'package:calicut_test/app/intro_screen/view/intro_screen.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  splash() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.offAll(() => IndrouctionScreen());
    update();
  }

  @override
  void onInit() {
    super.onInit();
    splash();
  }
}
