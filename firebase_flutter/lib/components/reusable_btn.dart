import 'package:firebase_flutter/constants/colors.dart';
import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  String text;
  VoidCallback ontap;
  bool loading;
  ReusableButton(
      {super.key,
      required this.text,
      required this.ontap,
      this.loading = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.brown,
        ),
        child: Center(
            child: loading == true
                ? const CircularProgressIndicator()
                : Text(
                    text,
                    style: const TextStyle(color: AppColors.white),
                  )),
      ),
    );
  }
}
