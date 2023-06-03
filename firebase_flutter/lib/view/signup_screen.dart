import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../components/reusable_btn.dart';
import '../components/textformfield.dart';
import '../constants/colors.dart';
import '../constants/images.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundColor: AppColors.brown,
              backgroundImage: AssetImage(AppImages.logo),
            ),
            const SizedBox(
              height: 20,
            ),
            TextformfieldW(
              controller: emailController,
              prefixIcon: const Icon(Icons.email),
              hintText: "Email",
            ),
            const SizedBox(
              height: 20,
            ),
            TextformfieldW(
              controller: passController,
              prefixIcon: const Icon(Icons.password),
              hintText: "Password",
            ),
            const SizedBox(
              height: 20,
            ),
            ReusableButton(
              text: "Signup",
              ontap: () {
                firebaseAuth
                    .createUserWithEmailAndPassword(
                        email: emailController.text.toString(),
                        password: passController.text.toString())
                    .then((value) {
                  toastMethod("Signup successfully");
                }).onError((error, stackTrace) {
                  toastMethod(error.toString());
                });
              },
            )
          ],
        ),
      ),
    );
  }

  void toastMethod(String msg) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
