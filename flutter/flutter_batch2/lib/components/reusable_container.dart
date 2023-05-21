import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {
  String? text;
  Color color;
  double height;
  double width;
  String? image;
  VoidCallback ontap;
  BoxBorder boxBorder;

  ReusableContainer(
      {super.key,
      this.text,
      this.color = Colors.blue,
      this.image,
      required this.ontap,
     required this.boxBorder,
      this.height = 60,
      this.width = 320});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
          border: boxBorder,
          color: color,
        ),
        height: height,
        width: width,
        child: Text(text!),
      ),
    );
  }
}
