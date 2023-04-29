import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_batch2/classOne.dart';

class ClassTwo extends StatelessWidget {
  const ClassTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        toolbarHeight: 100,
        elevation: 0,
        title: const Text("Class Two"),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(120),
                bottomRight: Radius.circular(120))),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(120),
                  bottomRight: Radius.circular(120)),
              gradient: LinearGradient(
                  colors: [Colors.purple, Colors.pink, Colors.grey])),
        ),
      ),
      body: SingleChildScrollView(
        // scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.asset("images/login.webp"),
              Image.network(
                "https://static.vecteezy.com/system/resources/previews/005/879/539/original/cloud-computing-modern-flat-concept-for-web-banner-design-man-enters-password-and-login-to-access-cloud-storage-for-uploading-and-processing-files-illustration-with-isolated-people-scene-free-vector.jpg",
                height: 100,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                // showCursor: false,
                cursorColor: Colors.purple,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide()),
                    label: Text("Email"),
                    prefixIcon: Icon(Icons.email),
                    hintText: "Enter Your email"),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide()),
                    label: Text("Password"),
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: Icon(Icons.visibility),
                    hintText: "Enter Your Password"),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const ClassOne())));
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Center(
                      child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const CircleAvatar(
                radius: 50,
                // backgroundColor: Colors.amber,
                backgroundImage: AssetImage(
                  "images/login.webp",
                ),
                child: Text("H"),
              ),
              const ListTile(
                leading: CircleAvatar(
                  radius: 50,
                  // backgroundColor: Colors.amber,
                  backgroundImage: AssetImage(
                    "images/login.webp",
                  ),
                  child: Text("H"),
                ),
                title: Text("Title"),
                subtitle: Text("Subtitle"),
                trailing: Text("10.00pm"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



// LEC 3:
// •	How to make stylish app bar
// •	How to apply linear gradient
// •	Text Form Field widget
// •	Create round button
// •	Design Login UI
// LEC 4:
// •	Add Network & asset image
// •	Gesture detector ontap onpress function
// •	Inkwell widget
// •	Padding widget

// LEC 5:
// •	Circular avatar widget
// •	List tile widget
// •	SingleChildScollView
// Assignment
// design login and signup screen
// design whatsapp home screen