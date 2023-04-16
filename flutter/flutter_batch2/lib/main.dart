import 'package:flutter/material.dart';

void main() {
  runApp(const MYApp());
}

class MYApp extends StatelessWidget {
  const MYApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          centerTitle: true,
          title: const Text(
            "Flutter App",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w200),
          ),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.purple,
                  ),
                  child: const Center(
                      child: Text(
                    "Container 1",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.purple,
                  ),
                  child: const Center(
                      child: Text(
                    "Container 1",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.purple,
                ),
                child: const Center(
                    child: Text(
                  "Container 2",
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// LEC 1:
// •	Creating first flutter project
// •	Understand vs code all things
// •	Install extensions
// LEC 2:
// •	Stateless widget
// •	Hot reload and hot restart
// •	Understand widgets
// •	App bar widget
// •	Container widget
// •	Single child widgets
// •	Multi child widgets
// Assignment
// •	Design UI using six containers

