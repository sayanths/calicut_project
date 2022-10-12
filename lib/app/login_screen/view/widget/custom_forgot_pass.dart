import 'package:calicut_test/app/utiles/color.dart';
import 'package:flutter/material.dart';

class CusstomForgotPassword extends StatelessWidget {
  const CusstomForgotPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Align(
          alignment: Alignment.centerRight,
          child: Text(
            "Forgot Password?",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500, color: grey),
          )),
    );
  }
}

class CustomLogo extends StatelessWidget {
  const CustomLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        width: 200,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('asset/img01.png'), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
