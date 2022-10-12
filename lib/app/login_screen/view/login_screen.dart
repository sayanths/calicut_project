import 'package:calicut_test/app/login_screen/controller/login_controller.dart';
import 'package:calicut_test/app/login_screen/view/widget/custom_button..dart';
import 'package:calicut_test/app/login_screen/view/widget/custom_forgot_pass.dart';
import 'package:calicut_test/app/login_screen/view/widget/custom_textfield.dart';
import 'package:calicut_test/app/utiles/widget.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final logincontroller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(16),
      child: ListView(
        children: [
          const SizedBox(height: 40),
          const CustomLogo(),
          const SizedBox(height: 10),
          Form(
            key: logincontroller.formkey,
            child: Column(
              children: [
                CustomTextFromField(
                  controller: logincontroller.emailController,
                  obsureText: false,
                  keyboardAppearnce: TextInputType.emailAddress,
                  title: 'Username',
                  icon: Icons.person,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "email is required";
                    }
                    if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                        .hasMatch(value)) {
                      return 'please Enter Valid email';
                    }
                    return null;
                  },
                ),
                height20,
                CustomTextFromField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "password is required";
                    }
                    return null;
                  },
                  controller: logincontroller.passwordController,
                  obsureText: true,
                  title: 'Password',
                  icon: Icons.lock,
                ),
              ],
            ),
          ),
          height20,
          const CusstomForgotPassword(),
          height20,
          CustomElevatedButton(logincontroller: logincontroller),
        ],
      ),
    ));
  }
}

