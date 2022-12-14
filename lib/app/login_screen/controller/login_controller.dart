import 'package:calicut_test/app/login_screen/model/login_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formkey = GlobalKey<FormState>();

  void login() {
    if (formkey.currentState!.validate()) {
      Api().loginApi(emailController.text, passwordController.text);
    }
  }
}
