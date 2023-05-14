import 'package:flutter/material.dart';

import 'class7.dart';

void main() {
  runApp(const MYApp());
}

class MYApp extends StatelessWidget {
  const MYApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: Class7());
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

