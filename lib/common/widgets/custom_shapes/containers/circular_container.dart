
import 'package:flutter/material.dart';
import 'package:shop_shoes/utils/constants/colors.dart';

class CircularConatiner extends StatelessWidget {
  const CircularConatiner({
    super.key,
    this.child,
    this.height = 400,
    this.width = 400,
    this.padding = 0,
    this.radius = 400,
    this.backgroundColor = CustomColors.white,
  });
  final double height;
  final double width;
  final Widget? child;
  final double radius;
  final double padding;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: height,
      height: width,
      padding:  EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),
    );
  }
}
