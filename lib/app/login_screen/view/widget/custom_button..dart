// ignore: file_names
import 'package:calicut_test/app/login_screen/controller/login_controller.dart';
import 'package:calicut_test/app/utiles/color.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.logincontroller,
  }) : super(key: key);

  final LoginController logincontroller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: green,
            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5), // <-- Radius
            ),
          ),
          onPressed: () {
            logincontroller.login();
          },
          child: const Text('Log in')),
    );
  }
}
