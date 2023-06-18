// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class LoginApiScreen extends StatefulWidget {
  const LoginApiScreen({super.key});

  @override
  State<LoginApiScreen> createState() => _LoginApiScreenState();
}

class _LoginApiScreenState extends State<LoginApiScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signup(String email, String password) async {
    try {
      var response = await http.post(Uri.parse("https://reqres.in/api/login"),
          body: {"email": email, "password": password});

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        print(data);
        print("Signup Successfully");
      } else {
        print("failed");
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(hintText: "Email"),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: passwordController,
              decoration: const InputDecoration(hintText: "password"),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  signup(emailController.text, toString());
                },
                child: const Text("Signup"))
          ],
        ),
      ),
    );
  }
}
