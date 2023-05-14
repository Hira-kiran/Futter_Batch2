// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ClassFive extends StatefulWidget {
  const ClassFive({super.key});

  @override
  State<ClassFive> createState() => _ClassFiveState();
}

class _ClassFiveState extends State<ClassFive> {
  // ********* Radio button ************
  String pak = "Pak";
  String lhr = "lhr";
  String isl = "isl";

  // ********* Checkbox ************
  bool fsd = false;
  bool lahor = false;
  bool paki = false;
  // ********* Switch ************
  bool sswitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Class Five"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              // ********* Radio button ************
              Radio(
                  activeColor: Colors.black,
                  value: "Pak",
                  groupValue: pak,
                  onChanged: ((value) {
                    setState(() {
                      pak = value.toString();
                    });
                  })),
              const Text("Pakistan")
            ],
          ),
          Row(
            children: [
              Radio(
                  activeColor: Colors.black,
                  value: "lhr",
                  groupValue: pak,
                  onChanged: ((value) {
                    setState(() {
                      pak = value.toString();
                    });
                  })),
              const Text("Lahore")
            ],
          ),
          Row(
            children: [
              Radio(
                  activeColor: Colors.black,
                  value: "isl",
                  groupValue: pak,
                  onChanged: ((value) {
                    setState(() {
                      pak = value.toString();
                    });
                  })),
              const Text("Islambad")
            ],
          ),

          // ********* Checkbox ************

          Row(
            children: [
              Checkbox(
                  value: fsd,
                  onChanged: ((value) {
                    setState(() {
                      fsd = value!;
                    });
                  })),
              const Text("Faialabad")
            ],
          ),
          Row(
            children: [
              Checkbox(
                  value: lahor,
                  onChanged: ((value) {
                    setState(() {
                      lahor = value!;
                    });
                  })),
              const Text("Lahore")
            ],
          ),
          Row(
            children: [
              Checkbox(
                  activeColor: Colors.greenAccent,
                  value: paki,
                  onChanged: ((value) {
                    setState(() {
                      paki = value!;
                    });
                  })),
              const Text("Pakistan")
            ],
          ),
          Switch(
              activeColor: Colors.amber,
              inactiveTrackColor: Colors.black,
              value: sswitch,
              onChanged: ((value) {
                setState(() {
                  sswitch = value;
                });
              })),

          TextButton(
              onPressed: () {
                // ************ Dialogue Box ***************
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        backgroundColor: Colors.grey,
                        title: const Text("Class Five"),
                        content: const Text("This is my flutter class"),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Ok")),
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Cancel"))
                        ],
                      );
                    });
              },
              child: const Text("Dialogue button"))
        ],
      ),
    );
  }
}

// ********* LEC 10 ****************
// •	Radio Button
// •	Checkbox 
// •	Switch button
// •	Dialogue
// ************** Assignments ********

// make whatsappp clone
// dialogue box
// make any screen using checkbox, radio button and switch
