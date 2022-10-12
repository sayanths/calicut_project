import 'package:flutter/material.dart';

class CustomTextFromField extends StatelessWidget {
  final TextInputType? keyboardAppearnce;
  final String? Function(String?)? validator;
  final String title;
  final IconData icon;
  final bool obsureText;
  final TextEditingController controller;

  const CustomTextFromField({
    Key? key,
    this.validator,
    required this.title,
    required this.icon,
    required this.obsureText,
    this.keyboardAppearnce,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: TextFormField(
        controller: controller,
        obscureText: obsureText,
        keyboardType: keyboardAppearnce,
        validator: validator,
        decoration: InputDecoration(
            label: Text(title),
            prefixIcon: Icon(icon),
            focusedBorder: const OutlineInputBorder(),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            )),
      ),
    );
  }
}
