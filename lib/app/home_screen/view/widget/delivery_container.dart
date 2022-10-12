import 'package:flutter/material.dart';

class ContainerWithoutBorderRadius extends StatelessWidget {
  final double height;
  final double width;
  final Color? color;
  final EdgeInsetsGeometry? margin;
  final Widget? child;
  final Decoration? boxdecoration;
  const ContainerWithoutBorderRadius({
    Key? key,
    required this.size,
    required this.height,
    required this.width,
    this.color,
    this.margin,
    this.child,
    this.boxdecoration,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: height,
      width: width,
      decoration: boxdecoration,
      child: child,
    );
  }
}

class CustomDeliveryDetailContainer extends StatelessWidget {
  final String image;
  final String title;
  final Color? color;

  const CustomDeliveryDetailContainer({
    Key? key,
    required this.image,
    required this.title,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          image,
          color: color,
          height: 35,
        ),
        Text(
          title,
        )
      ],
    );
  }
}
