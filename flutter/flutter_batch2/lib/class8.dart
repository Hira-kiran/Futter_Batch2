import 'package:flutter/material.dart';

import 'components/reusable_container.dart';

class Class8 extends StatelessWidget {
  const Class8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Components"),
      ),
      body: Column(children: [
        ReusableContainer(
          ontap: () {},
          text: "comp1",
          color: Colors.black,
          height: 200,
          boxBorder: Border.all(
            color: Colors.lightGreen,
            width: 20,
          ),
        ),
        ReusableContainer(
          ontap: () {},
          text: "jj",
          boxBorder: Border.all(
            color: Colors.lightGreen,
          ),
        ),
      ]),
    );
  }
}

// LEC 14:
// •	Making components

