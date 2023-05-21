// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/fonts.dart';

class TextFormFieldW extends StatelessWidget {
  String? hintText;
  final TextEditingController controller;
  final Widget? prefixIcon;
  final FormFieldValidator? validator;
  final FormFieldValidator? onsaved;
  final FormFieldValidator? onChanged;
  final bool obscure;
  final String text;

  // final  maxlines;
  TextFormFieldW({
    super.key,
    this.hintText,
    required this.controller,
    this.prefixIcon,
    this.onsaved,
    this.onChanged,
    this.obscure = false,
    required this.text,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.grey,
                fontFamily: AppFonts.arialFont)),
        Container(
          height: 52,
          child: TextFormField(
              obscureText: obscure,
              /*   maxLines: maxlines, */
              style: const TextStyle(color: AppColors.black),
              cursorColor: AppColors.grey,
              keyboardType: TextInputType.emailAddress,
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: const BorderSide(color: AppColors.grey),
                    borderRadius: BorderRadius.circular(12)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: AppColors.grey)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: AppColors.grey)),
                hintText: hintText,
                hintStyle: const TextStyle(
                    color: Color.fromARGB(255, 177, 175, 175),
                    fontFamily: AppFonts.arialFont),
                // labelText: "Email",
              ),
              onChanged: onChanged,
              onSaved: onsaved,
              textInputAction: TextInputAction.next,
              validator: validator),
        ),
      ],
    );
  }
}
