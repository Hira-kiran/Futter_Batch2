import 'package:flutter/material.dart';
import '../constants/colors.dart';

class TextformfieldW extends StatelessWidget {
  String hintText;
  Widget prefixIcon;
  TextEditingController controller;
  FormFieldValidator? validator;
  TextformfieldW({super.key, required this.hintText, required this.prefixIcon,required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
      
        hintStyle: const TextStyle(color: AppColors.blueColor),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        prefixIcon: prefixIcon,
      ),
      validator: validator,
    );
  }
}
