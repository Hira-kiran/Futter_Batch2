import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_flutter/view/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../components/reusable_btn.dart';
import '../components/textformfield.dart';
import '../constants/colors.dart';
import '../constants/images.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  bool loading = false;
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
              text: "Login",
              loading: loading,
              ontap: () {
                setState(() {
                  loading = true;
                });
                firebaseAuth
                    .signInWithEmailAndPassword(
                        email: emailController.text.toString(),
                        password: passController.text.toString())
                    .then((value) {
                  setState(() {
                    loading = false;
                  });
                  toastMethod("Login successfully");
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignupScreen()));
                }).onError((error, stackTrace) {
                  setState(() {
                    loading = false;
                  });
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
