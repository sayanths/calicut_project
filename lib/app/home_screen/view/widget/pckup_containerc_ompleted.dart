
import 'package:calicut_test/app/utiles/color.dart';
import 'package:flutter/material.dart';

class PickUpContainerCompleted extends StatelessWidget {
  const PickUpContainerCompleted({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height / 15,
      width: double.infinity,
      color: green,
      child: Row(
        children: const [
          Expanded(
              child: Icon(
            Icons.message,
            color: white,
            size: 33,
          )),
          Expanded(
              flex: 5,
              child: Text(
                "You have new pickup request",
                style: TextStyle(
                    color: white,
                    fontWeight: FontWeight.w400,
                    fontSize: 15),
              ))
        ],
      ),
    );
  }
}
