// ignore_for_file: file_names

import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ClassSix extends StatefulWidget {
  const ClassSix({super.key});

  @override
  State<ClassSix> createState() => _ClassSixState();
}

class _ClassSixState extends State<ClassSix> {
  List foodItems = ["Pizza", "burger", "a", "b"];
  String countryCode = "";

  List colors = [Colors.amber, Colors.black, Colors.blue, Colors.purple];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Class Six"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Class Six",
              style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 20))),
          ElevatedButton(
              onPressed: () {
                showCountryPicker(
                  countryListTheme: CountryListThemeData(
                      borderRadius: BorderRadius.circular(20),
                      backgroundColor: Colors.blue,
                      flagSize: 20),
                  context: context,
                  onSelect: (value) {
                    setState(() {});
                    countryCode = value.flagEmoji.toString();
                  },
                );
              },
              child: Text(countryCode))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}

//  const FlutterLogo(
//             size: 200.0,
//             style: FlutterLogoStyle.horizontal,
//             textColor: Colors.blue,
//           ),

//  GridView(
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//         ),
//         children: [
//           Container(
//             height: 100,
//             width: 100,
//             color: Colors.amber,
//           ),
//           Container(
//             height: 100,
//             width: 100,
//             color: Colors.purple,
//           ),
//           Container(
//             height: 100,
//             width: 100,
//             color: Colors.black,
//           ),
//           Container(
//             height: 100,
//             width: 100,
//             color: Colors.green,
//           ),
//           Container(
//             height: 100,
//             width: 100,
//             color: Colors.amber,
//           ),
//         ],
//       ),





// GridView.builder(
//           itemCount: foodItems.length,
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 4, mainAxisSpacing: 20, crossAxisSpacing: 20),
//           itemBuilder: (context, index) {
//             return Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 color: colors[index],
//                 child: Center(
//                     child: Column(
//                   children: [
//                     Text(foodItems[index]),
//                   ],
//                 )),
//               ),
//             );
//           }),